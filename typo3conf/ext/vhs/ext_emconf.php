<?php

/***************************************************************
 * Extension Manager/Repository config file for ext "vhs".
 *
 * Auto generated 21-07-2014 10:14
 *
 * Manual updates:
 * Only the data in the array - everything else is removed by next
 * writing. "version" and "dependencies" must not be touched!
 ***************************************************************/

$EM_CONF[$_EXTKEY] = array (
	'title' => 'VHS: Fluid ViewHelpers',
	'description' => 'A collection of ViewHelpers to perform rendering tasks which are not natively supported by Fluid - for example: advanced formatters, math calculators, specialized conditions and Iterator/Array calculators and processors',
	'category' => 'misc',
	'version' => '1.9.1',
	'state' => 'stable',
	'uploadfolder' => true,
	'createDirs' => '',
	'clearcacheonload' => true,
	'author' => 'FluidTYPO3 Team',
	'author_email' => 'claus@namelesscoder.net',
	'author_company' => '',
	'constraints' => 
	array (
		'depends' => 
		array (
			'typo3' => '6.0.0-6.2.99',
			'cms' => '',
			'extbase' => '',
			'fluid' => '',
		),
		'conflicts' => 
		array (
		),
		'suggests' => 
		array (
		),
	),
);

