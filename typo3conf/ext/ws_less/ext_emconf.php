<?php

/***************************************************************
 * Extension Manager/Repository config file for ext "ws_less".
 *
 * Auto generated 21-07-2014 10:14
 *
 * Manual updates:
 * Only the data in the array - everything else is removed by next
 * writing. "version" and "dependencies" must not be touched!
 ***************************************************************/

$EM_CONF[$_EXTKEY] = array (
	'title' => 'Less compiler for TYPO3',
	'description' => 'Compiles less files to CSS files.',
	'category' => 'fe',
	'version' => '1.3.4',
	'state' => 'stable',
	'uploadfolder' => false,
	'createDirs' => 'typo3temp/ws_less',
	'clearcacheonload' => false,
	'author' => 'Sven Wappler',
	'author_email' => 'typo3YYYY@wapplersystems.de',
	'author_company' => '',
	'constraints' => 
	array (
		'depends' => 
		array (
			'typo3' => '6.0.0-6.2.99',
		),
		'conflicts' => 
		array (
		),
		'suggests' => 
		array (
		),
	),
);

