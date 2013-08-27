<?php

/***************************************************************
 * Extension Manager/Repository config file for ext "gridelements".
 *
 * Auto generated 27-08-2013 20:56
 *
 * Manual updates:
 * Only the data in the array - everything else is removed by next
 * writing. "version" and "dependencies" must not be touched!
 ***************************************************************/

$EM_CONF[$_EXTKEY] = array(
	'title' => 'Grid Elements',
	'description' => 'This extension integrates the grid layout concept also to regular content elements - the grid elements.
It offers a lot of new features like advanced drag & drop or real references, that improve the usability of the page and list module to speed up the daily work with the backend.',
	'category' => 'be',
	'shy' => 0,
	'version' => '1.4.1',
	'dependencies' => '',
	'conflicts' => '',
	'priority' => 'bottom',
	'loadOrder' => '',
	'module' => '',
	'state' => 'stable',
	'uploadfolder' => 1,
	'createDirs' => '',
	'modify_tables' => 'tt_content',
	'clearcacheonload' => 0,
	'lockType' => '',
	'author' => 'Grid Elements Team',
	'author_email' => 'info@cybercraft.de',
	'author_company' => 'Cybercraft Media Manufactory',
	'CGLcompliance' => '',
	'CGLcompliance_note' => '',
	'constraints' => array(
		'depends' => array(
			'cms' => '',
			'version' => '',
			'php' => '5.3.3-0.0.0',
			'typo3' => '4.5.0-4.7.99',
		),
		'conflicts' => array(
			'templavoila' => '',
			'jfmulticontent' => '',
		),
		'suggests' => array(
		),
	),
	'_md5_values_when_last_written' => 'a:76:{s:9:"ChangeLog";s:4:"c48b";s:16:"ext_autoload.php";s:4:"6050";s:21:"ext_conf_template.txt";s:4:"7981";s:12:"ext_icon.gif";s:4:"8275";s:17:"ext_localconf.php";s:4:"378c";s:14:"ext_tables.php";s:4:"aa9e";s:14:"ext_tables.sql";s:4:"40db";s:39:"icon_tx_gridelements_backend_layout.gif";s:4:"475a";s:16:"locallang_db.xml";s:4:"519e";s:9:"README.md";s:4:"ce80";s:10:"README.txt";s:4:"2db6";s:7:"tca.php";s:4:"4aa7";s:14:"doc/manual.pdf";s:4:"2ec2";s:14:"doc/manual.sxw";s:4:"d094";s:19:"doc/wizard_form.dat";s:4:"63f3";s:20:"doc/wizard_form.html";s:4:"4c87";s:49:"hooks/class.tx_gridelements_db_list_extrahook.php";s:4:"0ce3";s:43:"hooks/class.tx_gridelements_db_listhook.php";s:4:"cd83";s:48:"hooks/class.tx_gridelements_pagerendererhook.php";s:4:"ec41";s:34:"lib/class.tx_gridelements_ajax.php";s:4:"774a";s:39:"lib/class.tx_gridelements_cmoptions.php";s:4:"28f9";s:42:"lib/class.tx_gridelements_drawitemhook.php";s:4:"cfab";s:36:"lib/class.tx_gridelements_helper.php";s:4:"6be3";s:41:"lib/class.tx_gridelements_layoutsetup.php";s:4:"c3ed";s:42:"lib/class.tx_gridelements_tceformshook.php";s:4:"b961";s:41:"lib/class.tx_gridelements_tcemainhook.php";s:4:"aa1f";s:40:"lib/class.tx_gridelements_tt_content.php";s:4:"d645";s:45:"lib/class.tx_gridelements_wizarditemshook.php";s:4:"3069";s:12:"lib/conf.php";s:4:"9f53";s:42:"lib/wizard_gridelements_backend_layout.php";s:4:"9554";s:29:"lib/wrapperForT3libBeFunc.php";s:4:"aac3";s:67:"lib/itemsprocfuncs/class.tx_gridelements_itemsprocfunc_abstract.php";s:4:"fd54";s:69:"lib/itemsprocfuncs/class.tx_gridelements_itemsprocfunc_colposlist.php";s:4:"8498";s:68:"lib/itemsprocfuncs/class.tx_gridelements_itemsprocfunc_ctypelist.php";s:4:"26b0";s:54:"lib/tcemain/class.tx_gridelements_tcemain_abstract.php";s:4:"6ed2";s:56:"lib/tcemain/class.tx_gridelements_tcemain_moveRecord.php";s:4:"49fa";s:66:"lib/tcemain/class.tx_gridelements_tcemain_preProcessFieldArray.php";s:4:"e3e2";s:59:"lib/tcemain/class.tx_gridelements_tcemain_processCmdmap.php";s:4:"4fbe";s:22:"res/css/grideditor.css";s:4:"2fab";s:31:"res/css/skin/GridElementsDD.css";s:4:"bf20";s:32:"res/css/skin/t3skin_override.css";s:4:"1622";s:47:"res/flexform/default_flexform_configuration.xml";s:4:"7799";s:40:"res/img/add copy (from another page).png";s:4:"acc4";s:17:"res/img/clear.gif";s:4:"cc11";s:31:"res/img/gridelements_sprite.png";s:4:"dae9";s:26:"res/img/new_content_el.gif";s:4:"efa2";s:22:"res/img/paste copy.png";s:4:"1a13";s:30:"res/img/paste reference to.png";s:4:"1712";s:21:"res/img/reference.png";s:4:"b409";s:34:"res/img/t3grid-edit-inactive-1.png";s:4:"728d";s:32:"res/img/t3grid-edit-inactive.png";s:4:"728d";s:23:"res/img/t3grid-edit.png";s:4:"f677";s:39:"res/img/t3grid-editor-down-inactive.png";s:4:"33d4";s:30:"res/img/t3grid-editor-down.png";s:4:"083d";s:39:"res/img/t3grid-editor-left-inactive.png";s:4:"bc52";s:30:"res/img/t3grid-editor-left.png";s:4:"12ff";s:40:"res/img/t3grid-editor-right-inactive.png";s:4:"328a";s:31:"res/img/t3grid-editor-right.png";s:4:"a01f";s:37:"res/img/t3grid-editor-up-inactive.png";s:4:"3ae1";s:28:"res/img/t3grid-editor-up.png";s:4:"736a";s:35:"res/img/t3grid-layer-icon-close.png";s:4:"c0aa";s:34:"res/img/t3grid-layer-icon-help.png";s:4:"8fa0";s:34:"res/img/t3grid-layer-icon-save.png";s:4:"fc92";s:28:"res/img/t3grid-tabledown.png";s:4:"24a5";s:28:"res/img/t3grid-tableleft.png";s:4:"e4d9";s:29:"res/img/t3grid-tableright.png";s:4:"592e";s:26:"res/img/t3grid-tableup.png";s:4:"6cf2";s:36:"res/js/dbNewContentElWizardFixDTM.js";s:4:"79e9";s:20:"res/js/grideditor.js";s:4:"618c";s:24:"res/js/GridElementsDD.js";s:4:"d927";s:32:"res/js/GridElementsDD_onReady.js";s:4:"89aa";s:30:"res/js/GridElementsListView.js";s:4:"6614";s:33:"static/gridelements/constants.txt";s:4:"d41d";s:29:"static/gridelements/setup.txt";s:4:"b6da";s:35:"view/class.tx_gridelements_view.php";s:4:"e379";s:33:"xclass/class.ux_db_list_extra.php";s:4:"0f61";}',
);

?>