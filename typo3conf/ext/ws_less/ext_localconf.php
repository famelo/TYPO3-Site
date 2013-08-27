
<?php
if (!defined('TYPO3_MODE')) {
	die('Access denied.');
}

$GLOBALS['TYPO3_CONF_VARS']['SC_OPTIONS']['t3lib/class.t3lib_pagerenderer.php']['render-preProcess']['wsless'] = 'EXT:ws_less/Classes/Hooks/RenderPreProcessorHook.php:&tx_Wsless_Hooks_RenderPreProcessorHook->renderPreProcessorProc';

// Caching the 404 pages - default expire 3600 seconds
if (!is_array($GLOBALS['TYPO3_CONF_VARS']['SYS']['caching']['cacheConfigurations']['ws_less'])) {
	$GLOBALS['TYPO3_CONF_VARS']['SYS']['caching']['cacheConfigurations']['ws_less'] = array(
		'frontend' => 't3lib_cache_frontend_VariableFrontend',
		'backend' => 't3lib_cache_backend_FileBackend',
		'options' => array(
				'defaultLifetime' => 3600*24*7,
			),
	);

	$GLOBALS['typo3CacheFactory']->create(
		'ws_less',
		$GLOBALS['TYPO3_CONF_VARS']['SYS']['caching']['cacheConfigurations']['ws_less']['frontend'],
		$GLOBALS['TYPO3_CONF_VARS']['SYS']['caching']['cacheConfigurations']['ws_less']['backend'],
		$GLOBALS['TYPO3_CONF_VARS']['SYS']['caching']['cacheConfigurations']['ws_less']['options']
	);
}

$GLOBALS['TYPO3_CONF_VARS']['SYS']['useCachingFramework'] = 1;

$extensionClassesPath = t3lib_extMgm::extPath('ws_less');
require_once($extensionClassesPath . 'Resources/Private/PHP/lessphp/lessc.inc.php');

?>