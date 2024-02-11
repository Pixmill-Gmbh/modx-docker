id: 1
source: 1
name: Assets
properties: 'a:0:{}'

-----

/** @var modx $modx */
if ($modx->event->name !== 'OnBeforeRegisterClientScripts') {
    return;
}

$baseUrl = MODX_ASSETS_URL . 'app/';
$port = '9090';
$connection = @fsockopen('node', $port);
if (is_resource($connection)) {
    // Development mode
    $server = explode(':', MODX_HTTP_HOST);
    $vite = MODX_URL_SCHEME . $server[0] . ':' . $port . $baseUrl;
    $modx->regClientHTMLBlock('<script type="module" src="' . $vite . '@vite/client"></script>');
    $modx->regClientHTMLBlock('<script type="module" src="' . $vite . 'src/index.js"></script>');
} else {
    // Production mode
    $manifest = MODX_ASSETS_PATH . 'app/.vite/manifest.json';
    if (file_exists($manifest) && $files = json_decode(file_get_contents($manifest), true)) {
        if (!empty($files['src/index.js'])) {
            $file = $files['src/index.js'];
            $modx->regClientScript($baseUrl . $file['file']);
            if (!empty($file['css'])) {
                foreach($file['css'] as $css) {
                    $modx->regClientCss($baseUrl . $css);
                }
            }
        }
    }
}