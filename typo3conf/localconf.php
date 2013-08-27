<?php
if (!defined ('TYPO3_MODE')) {
	die ('Access denied.');
}

$TYPO3_CONF_VARS['SYS']['sitename'] = 'New TYPO3 site';

	// Default password is "joh316" :
$TYPO3_CONF_VARS['BE']['installToolPassword'] = 'bacb98acf97e0b6112b1d1b650b84971';

$TYPO3_CONF_VARS['EXT']['extList'] = 'info,perm,func,filelist,about,tsconfig_help,context_help,extra_page_cm_options,impexp,sys_note,tstemplate,tstemplate_ceditor,tstemplate_info,tstemplate_objbrowser,tstemplate_analyzer,func_wizards,wizard_crpages,wizard_sortpages,lowlevel,install,belog,beuser,aboutmodules,setup,taskcenter,info_pagetsconfig,viewpage,rtehtmlarea,css_styled_content,t3skin,t3editor,reports,felogin,introduction';

$typo_db_extTableDef_script = 'extTables.php';

## INSTALL SCRIPT EDIT POINT TOKEN - all lines after this points may be changed by the install script!
$TYPO3_CONF_VARS['EXT']['extList'] = 'extbase,css_styled_content,info,perm,func,filelist,about,tsconfig_help,context_help,extra_page_cm_options,impexp,sys_note,tstemplate,tstemplate_ceditor,tstemplate_info,tstemplate_objbrowser,tstemplate_analyzer,func_wizards,wizard_crpages,wizard_sortpages,lowlevel,install,belog,beuser,aboutmodules,setup,taskcenter,info_pagetsconfig,viewpage,rtehtmlarea,t3skin,t3editor,reports,felogin,fluid,vhs,version,autoswitchtolistview,ws_less,realurl,flux,fluidpages,fluidcontent,template,gridelements';	// Modified or inserted by TYPO3 Extension Manager. Modified or inserted by TYPO3 Core Update Manager. 
// Updated by TYPO3 Core Update Manager 27-08-13 20:43:14
$TYPO3_CONF_VARS['SYS']['encryptionKey'] = 'e52276f6e7cf33108b383b40c1ff673e87d2311a62ce6ea7cf425697b2738623efd57d2969f2bc1c5781149773b82037';	//  Modified or inserted by TYPO3 Install Tool.
$TYPO3_CONF_VARS['SYS']['compat_version'] = '4.5';	//  Modified or inserted by TYPO3 Install Tool.
$typo_db_username = 'root';	//  Modified or inserted by TYPO3 Install Tool.
$typo_db_password = 'root';	//  Modified or inserted by TYPO3 Install Tool.
$typo_db_host = 'localhost';	//  Modified or inserted by TYPO3 Install Tool.
$typo_db = 'tpl-typo3-4';	//  Modified or inserted by TYPO3 Install Tool.
// Updated by TYPO3 Install Tool 27-08-13 20:43:19
$TYPO3_CONF_VARS['EXT']['extList_FE'] = 'extbase,css_styled_content,install,rtehtmlarea,t3skin,felogin,fluid,vhs,version,autoswitchtolistview,ws_less,realurl,flux,fluidpages,fluidcontent,template,gridelements';	// Modified or inserted by TYPO3 Extension Manager. 
$TYPO3_CONF_VARS['EXT']['extConf']['devlog'] = 'a:11:{s:10:"maxLogRuns";s:2:"15";s:14:"entriesPerPage";s:2:"25";s:7:"maxRows";s:4:"1000";s:8:"optimize";s:1:"0";s:8:"dumpSize";s:7:"1000000";s:11:"minLogLevel";s:2:"-1";s:11:"excludeKeys";s:0:"";s:14:"highlightStyle";s:60:"padding: 2px; background-color: #fc3; border: 1px solid #666";s:16:"refreshFrequency";s:1:"2";s:13:"prototypePath";s:0:"";s:11:"autoCleanup";s:1:"0";}';	//  Modified or inserted by TYPO3 Extension Manager.
$TYPO3_CONF_VARS['EXT']['extConf']['fluidpages'] = 'a:2:{s:8:"doktypes";s:0:"";s:10:"autoRender";s:1:"0";}';	//  Modified or inserted by TYPO3 Extension Manager.
$TYPO3_CONF_VARS['EXT']['extConf']['fluidcontent'] = 'a:1:{s:9:"removeTab";s:1:"1";}';	//  Modified or inserted by TYPO3 Extension Manager.
// Updated by TYPO3 Extension Manager 27-08-13 21:00:54
?>