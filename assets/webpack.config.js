import path from 'path'
import AssetsManifest from 'webpack-assets-manifest'
import TerserJSPlugin from 'terser-webpack-plugin'
import CssMinimizerPlugin from 'css-minimizer-webpack-plugin'
import MiniCssExtractPlugin from 'mini-css-extract-plugin'
import CopyPlugin from 'copy-webpack-plugin'
import {CleanWebpackPlugin} from 'clean-webpack-plugin'

const source = './src/'
const dist = '../modx/assets/app'

export default (env, options) => {
  return {
    entry: path.resolve(source, 'index.js'),
    output: {
      path: path.resolve(dist),
      chunkFilename: options.mode == 'production'
        ? 'js/[name].[contenthash:8].min.js'
        : 'js/[name].js',
      filename: options.mode == 'production'
        ? 'js/[name].[contenthash:8].min.js'
        : 'js/[name].js'
    },
    target: 'web',
    optimization: {
      minimize: options.mode == 'production',
      minimizer: [
        new TerserJSPlugin({extractComments: false}),
        new CssMinimizerPlugin()
      ],
      splitChunks: {
        chunks: options.mode == 'production'
          ? 'all'
          : 'async',
        maxInitialRequests: Infinity,
        cacheGroups: {
          vendor: {
            test: /[\\/]node_modules[\\/]/,
            reuseExistingChunk: true,
            name(module) {
              const packageName = module.context.match(/[\\/]node_modules[\\/](.*?)([\\/]|$)/)[1];
              return packageName.replace('@', '');
            },
          },
        },
      },
    },
    module: {
      rules: [{
        test: /\.scss$/,
        use: [
          // {loader: 'style-loader'},
          {loader: MiniCssExtractPlugin.loader},
          {loader: 'css-loader'},
          {
            loader: 'postcss-loader',
            options: {
              postcssOptions: {
                plugins: ['autoprefixer']
              },
            }
          },
          {loader: 'sass-loader'},
        ]
      }, {
        test: /\.js$/,
        loader: 'babel-loader',
        exclude: /node_modules/,
      }, /*{
        test: /\.(png|jpe?g|gif|webp|svg|eot|ttf|woff|woff2)$/,
        loader: 'file-loader',
        options: {
          outputPath: (url, resourcePath) => {
            return /fonts/.test(resourcePath)
              ? `fonts/${url}`
              : `images/${url}`
          },
          name: options.mode == 'production'
            ? '[name].[contenthash:8].[ext]'
            : '[name].[ext]',
        }
      }*/]
    },
    plugins: [
      new CleanWebpackPlugin({
        verbose: false,
        cleanStaleWebpackAssets: true,
        // dry: options.mode !== 'production',
      }),
      new AssetsManifest({
        output: path.resolve(dist, 'manifest.json'),
        publicPath: true,
      }),
      new CopyPlugin({
        patterns: [
          {from: path.resolve(source, 'images'), to: path.resolve(dist, 'images'), noErrorOnMissing: true},
          {from: path.resolve(source, 'fonts'), to: path.resolve(dist, 'fonts'), noErrorOnMissing: true}
        ],
      }),
      new MiniCssExtractPlugin({
        chunkFilename: options.mode == 'production'
          ? 'css/[name].[contenthash:8].min.css'
          : 'css/[name].css',
        filename: options.mode == 'production'
          ? 'css/[name].[contenthash:8].min.css'
          : 'css/[name].css',
      }),
    ],
    devServer: {
      static: {
        directory: path.resolve(dist),
        watch: true,
      },
      port: 9000,
      // host: '127.0.0.1',
      devMiddleware: {
        writeToDisk: true,
      },
      liveReload: true,
      hot: false,
    },
    stats: 'minimal',
  }
}
