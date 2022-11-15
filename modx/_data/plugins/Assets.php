id: 1
source: 1
name: Assets
properties: 'a:0:{}'

-----

/** @var modx $modx */
if ($modx->event->name !== 'OnBeforeRegisterClientScripts') {
    return;
}

$assetsUrl = MODX_ASSETS_URL . 'app/';
$manifest = MODX_ASSETS_PATH . 'app/manifest.json';
if (!file_exists($manifest)) {
    return;
}
if (!$files = json_decode(file_get_contents($manifest), true)) {
    return;
}

foreach ($files as $file) {
    if (preg_match('#\.css$#', $file)) {
        $modx->regClientCss($assetsUrl . $file);
    } elseif (preg_match('#\.js$#', $file)) {
        $modx->regClientScript($assetsUrl . $file);
    }
}