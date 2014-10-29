-- MySQL dump 10.13  Distrib 5.5.38, for osx10.6 (i386)
--
-- Host: 127.0.0.1    Database: typo3-tpl
-- ------------------------------------------------------
-- Server version	5.5.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `config` text NOT NULL,
  `icon` text NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `non_exclude_fields` text,
  `explicit_allowdeny` text,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `custom_options` text,
  `db_mountpoints` text,
  `pagetypes_select` varchar(255) NOT NULL DEFAULT '',
  `tables_select` text,
  `tables_modify` text,
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `groupMods` text,
  `file_mountpoints` text,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `subgroup` text,
  `hide_in_lists` tinyint(4) NOT NULL DEFAULT '0',
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `file_permissions` text,
  `category_perms` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
INSERT INTO `be_groups` VALUES (1,0,1414590406,'Redakteure','tx_rtehtmlarea_acronym:type,pages_language_overlay:abstract,pages_language_overlay:author,pages_language_overlay:description,pages_language_overlay:author_email,pages_language_overlay:media,pages_language_overlay:hidden,pages_language_overlay:keywords,pages_language_overlay:nav_title,pages_language_overlay:shortcut_mode,pages_language_overlay:tx_realurl_pathsegment,pages_language_overlay:starttime,pages_language_overlay:endtime,pages_language_overlay:subtitle,pages_language_overlay:urltype,pages_language_overlay:doktype,pages_language_overlay:url,backend_layout:hidden,backend_layout:icon,sys_category:hidden,sys_category:sys_language_uid,sys_category:starttime,sys_category:endtime,sys_category:l10n_parent,sys_domain:forced,sys_domain:hidden,sys_domain:redirectHttpStatusCode,sys_domain:prepend_params,sys_file_metadata:categories,sys_file_metadata:title,sys_file_reference:alternative,sys_file_reference:description,sys_file_reference:link,sys_file_reference:title,sys_file_collection:hidden,sys_file_collection:sys_language_uid,sys_file_collection:starttime,sys_file_collection:endtime,sys_file_collection:l10n_parent,pages:newUntil,pages:abstract,pages:fe_group,pages:alias,pages:author,pages:backend_layout_next_level,pages:backend_layout,pages:cache_timeout,pages:cache_tags,pages:categories,pages:module,pages:description,pages:tx_realurl_nocache,pages:author_email,pages:url_scheme,pages:tx_realurl_exclude,pages:media,pages:storage_pid,pages:nav_hide,pages:hidden,pages:extendToSubpages,pages:is_siteroot,pages:keywords,pages:lastUpdated,pages:tx_fluidpages_layout,pages:layout,pages:l18n_cfg,pages:fe_login_mode,pages:nav_title,pages:no_cache,pages:no_search,pages:tx_realurl_pathoverride,pages:tx_fed_page_flexform,pages:tx_fed_page_flexform_sub,pages:tx_fed_page_controller_action_sub,pages:tx_fed_page_controller_action,pages:editlock,pages:shortcut_mode,pages:content_from_pid,pages:tx_realurl_pathsegment,pages:starttime,pages:php_tree_stop,pages:endtime,pages:mount_pid_ol,pages:subtitle,pages:target,pages:tx_fluidpages_templatefile,pages:TSconfig,pages:doktype,tt_content:fe_group,tt_content:spaceAfter,tt_content:imagecaption_position,tt_content:header_position,tt_content:altText,tt_content:table_bgColor,tt_content:spaceBefore,tt_content:imageborder,tt_content:table_border,tt_content:categories,tt_content:table_cellpadding,tt_content:table_cellspacing,tt_content:image_zoom,tt_content:select_key,tt_content:imagecols,tt_content:colPos,tt_content:date,tt_content:rte_enabled,tt_content:image_effects,tt_content:tx_fed_fcefile,tt_content:section_frame,tt_content:image_frames,tt_content:imageheight,tt_content:hidden,tt_content:image_compression,tt_content:sectionIndex,tt_content:sys_language_uid,tt_content:layout,tt_content:header_link,tt_content:image_link,tt_content:longdescURL,tt_content:image_noRows,tt_content:imageorient,tt_content:recursive,tt_content:starttime,tt_content:endtime,tt_content:subheader,tt_content:titleText,tt_content:linkToTop,tt_content:l18n_parent,tt_content:header_layout,tt_content:imagewidth,tt_content:pi_flexform;login;sDEF;pages,fe_users:address,fe_users:city,fe_users:company,fe_users:country,fe_users:disable,fe_users:email,fe_users:fax,fe_users:first_name,fe_users:felogin_forgotHash,fe_users:image,fe_users:lastlogin,fe_users:last_name,fe_users:lockToDomain,fe_users:middle_name,fe_users:name,fe_users:telephone,fe_users:tx_extbase_type,fe_users:felogin_redirectPid,fe_users:starttime,fe_users:endtime,fe_users:title,fe_users:TSconfig,fe_users:www,fe_users:zip,fe_groups:hidden,fe_groups:lockToDomain,fe_groups:tx_extbase_type,fe_groups:felogin_redirectPid,fe_groups:subgroup,fe_groups:TSconfig','tt_content:CType:--div--:ALLOW,tt_content:CType:header:ALLOW,tt_content:CType:text:ALLOW,tt_content:CType:textpic:ALLOW,tt_content:CType:image:ALLOW,tt_content:CType:bullets:ALLOW,tt_content:CType:table:ALLOW,tt_content:CType:uploads:ALLOW,tt_content:CType:mailform:ALLOW,tt_content:CType:login:ALLOW,tt_content:CType:search:ALLOW,tt_content:CType:multimedia:ALLOW,tt_content:CType:media:ALLOW,tt_content:CType:menu:ALLOW,tt_content:CType:shortcut:ALLOW,tt_content:CType:list:ALLOW,tt_content:CType:div:ALLOW,tt_content:CType:html:ALLOW,tt_content:CType:fluidcontent_content:ALLOW','',NULL,'20','1,4,3,254,199','pages,sys_category,sys_collection,sys_file,sys_file_collection,sys_file_metadata,sys_file_reference,sys_file_storage,backend_layout,fe_groups,fe_users,pages_language_overlay,sys_domain,tt_content,tx_rtehtmlarea_acronym,sys_note,tx_devlog','pages,sys_category,sys_collection,sys_file,sys_file_collection,sys_file_metadata,sys_file_reference,sys_file_storage,backend_layout,fe_groups,fe_users,pages_language_overlay,sys_domain,tt_content,tx_rtehtmlarea_acronym,sys_note,tx_devlog',1414139487,1,'web,web_layout,web_ViewpageView,web_list,web_func,web_info,web_txrecyclerM1,file,file_list,user,user_task,user_setup,help_AboutAbout,help_cshmanual,help_AboutmodulesAboutmodules','1',0,'','',0,'','',0,1,'readFolder,writeFolder,addFolder,renameFolder,moveFolder,copyFolder,deleteFolder,recursivedeleteFolder,readFile,writeFile,addFile,files_upload,renameFile,moveFile,copyFile,unzipFile,deleteFile','');
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_sessions`
--

DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(32) NOT NULL DEFAULT '',
  `ses_name` varchar(32) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` longtext,
  `ses_backuserid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_sessions`
--

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
INSERT INTO `be_sessions` VALUES ('465325cca23f6a8dd484b7d3c9326fe7','be_typo_user','::1',117061694,1,1414594079,'a:2:{s:16:\"formSessionToken\";s:64:\"a4a7986f921a9099a3ed81fb27e78b8305a96e7b41372fe44ed3c8c1539969d9\";s:27:\"core.template.flashMessages\";N;}',0);
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `admin` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `usergroup` varchar(255) NOT NULL DEFAULT '',
  `disable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` char(2) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `db_mountpoints` text,
  `options` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `realName` varchar(80) NOT NULL DEFAULT '',
  `userMods` text,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `uc` mediumtext,
  `file_mountpoints` text,
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `disableIPlock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `createdByAction` int(11) NOT NULL DEFAULT '0',
  `usergroup_cached_list` text,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `workspace_preview` tinyint(3) NOT NULL DEFAULT '1',
  `file_permissions` text,
  `category_perms` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1367620666,'admin','$1$pGQtA6Wf$khqZwvLgQ0GdR3R2.f4PX0',1,'',0,0,0,'','','',0,1367251578,0,'','','','a:9:{s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1395136631;s:14:\"interfaceSetup\";N;s:10:\"moduleData\";a:12:{s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}s:16:\"xMOD_alt_doc.php\";a:0:{}s:11:\"alt_doc.php\";a:2:{i:0;a:1:{s:32:\"36211ec356019d6ecf971ed0e7db7392\";a:4:{i:0;s:19:\"<em>[No title]</em>\";i:1;a:8:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:24;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:7:\"disHelp\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:116:\"&edit[tt_content][24]=edit&defVals=&overrideVals=&columnsOnly=&disHelp=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:2:\"24\";s:3:\"pid\";s:2:\"20\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}}i:1;s:32:\"951bc4c2921cc510f460cde37a656d14\";}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:8:\"web_list\";a:1:{s:15:\"bigControlPanel\";s:1:\"1\";}s:9:\"clipboard\";a:6:{s:6:\"normal\";a:1:{s:2:\"el\";a:0:{}}s:5:\"tab_1\";a:0:{}s:5:\"tab_2\";a:0:{}s:5:\"tab_3\";a:0:{}s:7:\"current\";s:6:\"normal\";s:9:\"_setThumb\";N;}s:16:\"web_txrecyclerM1\";a:1:{s:8:\"function\";s:0:\"\";}s:12:\"web_recycler\";a:1:{s:6:\"States\";a:2:{s:10:\"depthCombo\";N;s:10:\"tableCombo\";N;}}s:16:\"opendocs::recent\";a:7:{s:32:\"951bc4c2921cc510f460cde37a656d14\";a:4:{i:0;s:88:\"h1. Heading 1\r\nh2. Heading 2\r\nh3. Heading 3\r\nh4. Heading 4\r\nh5. Heading 5\r\nh6. Heading 6\";i:1;a:8:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:9;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:7:\"disHelp\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:115:\"&edit[tt_content][9]=edit&defVals=&overrideVals=&columnsOnly=&disHelp=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:1:\"9\";s:3:\"pid\";s:1:\"7\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}s:32:\"c980121d3fb9a856f26a72e4effaedd9\";a:4:{i:0;s:10:\"Redakteure\";i:1;a:8:{s:4:\"edit\";a:1:{s:9:\"be_groups\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:7:\"disHelp\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:114:\"&edit[be_groups][1]=edit&defVals=&overrideVals=&columnsOnly=&disHelp=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:9:\"be_groups\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}s:32:\"f95d1bbc2030d40006cea43680d58466\";a:4:{i:0;s:11:\"Dateisystem\";i:1;a:8:{s:4:\"edit\";a:1:{s:14:\"sys_filemounts\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:7:\"disHelp\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:119:\"&edit[sys_filemounts][1]=edit&defVals=&overrideVals=&columnsOnly=&disHelp=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:14:\"sys_filemounts\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}s:32:\"17652d0b9388778d6e3645000145406f\";a:4:{i:0;s:25:\"fileadmin/ (auto-created)\";i:1;a:8:{s:4:\"edit\";a:1:{s:16:\"sys_file_storage\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:7:\"disHelp\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:121:\"&edit[sys_file_storage][1]=edit&defVals=&overrideVals=&columnsOnly=&disHelp=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:16:\"sys_file_storage\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}s:32:\"4e2dfe96f15012747ad9678b1234a942\";a:4:{i:0;s:10:\"Styleguide\";i:1;a:8:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:22;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:7:\"disHelp\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:111:\"&edit[pages][22]=edit&defVals=&overrideVals=&columnsOnly=&disHelp=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";s:2:\"22\";s:3:\"pid\";s:2:\"20\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}s:32:\"720b7f258ec9692225fb85165d2897f7\";a:4:{i:0;s:4:\"Home\";i:1;a:8:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:21;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:7:\"disHelp\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:111:\"&edit[pages][21]=edit&defVals=&overrideVals=&columnsOnly=&disHelp=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";s:2:\"21\";s:3:\"pid\";s:2:\"20\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}s:32:\"00b564930d4c859805027a009bf1aecb\";a:4:{i:0;s:4:\"Home\";i:1;a:8:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:20;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:7:\"disHelp\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:111:\"&edit[pages][20]=edit&defVals=&overrideVals=&columnsOnly=&disHelp=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";s:2:\"20\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}}s:16:\"browse_links.php\";N;s:8:\"web_perm\";a:1:{s:5:\"depth\";s:1:\"1\";}s:9:\"menuState\";a:1:{s:13:\"modmenu_tools\";i:0;}}s:15:\"moduleSessionID\";a:10:{s:10:\"web_layout\";s:32:\"110edc17e6c6ad86e1d958ab4d81b895\";s:16:\"xMOD_alt_doc.php\";s:32:\"110edc17e6c6ad86e1d958ab4d81b895\";s:11:\"alt_doc.php\";s:32:\"465325cca23f6a8dd484b7d3c9326fe7\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:32:\"465325cca23f6a8dd484b7d3c9326fe7\";s:8:\"web_list\";s:32:\"011ab77e8e86e2278790cce643a2bcb8\";s:9:\"clipboard\";s:32:\"110edc17e6c6ad86e1d958ab4d81b895\";s:16:\"web_txrecyclerM1\";s:32:\"110edc17e6c6ad86e1d958ab4d81b895\";s:16:\"opendocs::recent\";s:32:\"465325cca23f6a8dd484b7d3c9326fe7\";s:16:\"browse_links.php\";s:32:\"011ab77e8e86e2278790cce643a2bcb8\";s:8:\"web_perm\";s:32:\"011ab77e8e86e2278790cce643a2bcb8\";}s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:3:{s:19:\"typo3-debug-console\";O:8:\"stdClass\":1:{s:9:\"collapsed\";b:1;}s:8:\"Pagetree\";O:8:\"stdClass\":1:{s:9:\"stateHash\";O:8:\"stdClass\":8:{s:1:\"0\";i:1;s:1:\"1\";i:1;s:2:\"12\";i:1;s:2:\"13\";i:1;s:2:\"14\";i:1;s:2:\"16\";i:1;s:4:\"root\";i:1;s:16:\"lastSelectedNode\";s:2:\"p7\";}}s:25:\"typo3-navigationContainer\";O:8:\"stdClass\":1:{s:5:\"width\";i:159;}}}s:8:\"tcaTrees\";a:3:{s:32:\"fc5490915273e8f87906abaacb8eff12\";i:0;s:32:\"29a6af94b00cbbf0a3d3df27b1bd4c67\";i:0;s:32:\"d2e1133f7858a3957716afd25af53d72\";i:0;}s:11:\"tx_recycler\";a:2:{s:14:\"depthSelection\";s:1:\"1\";s:14:\"tableSelection\";N;}s:11:\"browseTrees\";a:1:{s:11:\"browsePages\";s:24:\"a:1:{i:0;a:1:{i:0;i:1;}}\";}}','',1,'',0,0,'admPanel.override.tsdebug.forceTemplateParsing = 1',1414592597,0,'',0,1,NULL,'');
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_imagesizes`
--

DROP TABLE IF EXISTS `cache_imagesizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_imagesizes` (
  `md5hash` varchar(32) NOT NULL DEFAULT '',
  `md5filename` varchar(32) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `imagewidth` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `imageheight` mediumint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5filename`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_imagesizes`
--

LOCK TABLES `cache_imagesizes` WRITE;
/*!40000 ALTER TABLE `cache_imagesizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_imagesizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_md5params`
--

DROP TABLE IF EXISTS `cache_md5params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_md5params` (
  `md5hash` varchar(20) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `params` text,
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_md5params`
--

LOCK TABLES `cache_md5params` WRITE;
/*!40000 ALTER TABLE `cache_md5params` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_md5params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_treelist`
--

DROP TABLE IF EXISTS `cache_treelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_treelist` (
  `md5hash` char(32) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0',
  `treelist` text,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_treelist`
--

LOCK TABLES `cache_treelist` WRITE;
/*!40000 ALTER TABLE `cache_treelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_treelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_typo3temp_log`
--

DROP TABLE IF EXISTS `cache_typo3temp_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_typo3temp_log` (
  `md5hash` varchar(32) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `orig_filename` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_typo3temp_log`
--

LOCK TABLES `cache_typo3temp_log` WRITE;
/*!40000 ALTER TABLE `cache_typo3temp_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_typo3temp_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash`
--

DROP TABLE IF EXISTS `cf_cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash`
--

LOCK TABLES `cf_cache_hash` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash_tags`
--

DROP TABLE IF EXISTS `cf_cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash_tags`
--

LOCK TABLES `cf_cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages`
--

DROP TABLE IF EXISTS `cf_cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages`
--

LOCK TABLES `cf_cache_pages` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages_tags`
--

DROP TABLE IF EXISTS `cf_cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages_tags`
--

LOCK TABLES `cf_cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection`
--

DROP TABLE IF EXISTS `cf_cache_pagesection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection`
--

LOCK TABLES `cf_cache_pagesection` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection_tags`
--

DROP TABLE IF EXISTS `cf_cache_pagesection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection_tags`
--

LOCK TABLES `cf_cache_pagesection_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline`
--

DROP TABLE IF EXISTS `cf_cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline`
--

LOCK TABLES `cf_cache_rootline` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline_tags`
--

DROP TABLE IF EXISTS `cf_cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline_tags`
--

LOCK TABLES `cf_cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap_tags`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap_tags`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_object`
--

DROP TABLE IF EXISTS `cf_extbase_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_object`
--

LOCK TABLES `cf_extbase_object` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object` DISABLE KEYS */;
INSERT INTO `cf_extbase_object` VALUES (1,'10668158c1611d43c804efca1a1a89e5',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:41:\"FluidTYPO3\\Flux\\Provider\\ProviderResolver\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:26:\"injectConfigurationService\";s:35:\"FluidTYPO3\\Flux\\Service\\FluxService\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(2,'404e380d8cf01c346d87ab97b2114f63',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:35:\"FluidTYPO3\\Flux\\Service\\FluxService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(3,'ed7ad108d92f851eb75bb78abc9e2218',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"FluidTYPO3\\Flux\\Configuration\\ConfigurationManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(4,'48ee39591354d5b031b745485de55720',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(5,'dbac534c00a92e4f7b105be73fba4655',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(6,'1a0c63660fa7cf048d21ff3bf8d48aa4',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:57:\"FluidTYPO3\\Flux\\Configuration\\BackendConfigurationManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:19:\"injectRecordService\";s:37:\"FluidTYPO3\\Flux\\Service\\RecordService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:4:{s:14:\"queryGenerator\";s:38:\"TYPO3\\CMS\\Core\\Database\\QueryGenerator\";s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:17:\"typoScriptService\";s:43:\"TYPO3\\CMS\\Extbase\\Service\\TypoScriptService\";s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(7,'3ce92ec3c363793fc2f86b4333c16fa8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:37:\"FluidTYPO3\\Flux\\Service\\RecordService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(8,'a83f638ccc959a3a47ea70bd7ad866a8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:38:\"TYPO3\\CMS\\Core\\Database\\QueryGenerator\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(9,'d9a9ae73d3607000daec9828154ef861',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:43:\"TYPO3\\CMS\\Extbase\\Service\\TypoScriptService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(10,'33557becb5fd776e48ac1a4e8877c048',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}');
/*!40000 ALTER TABLE `cf_extbase_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_object_tags`
--

DROP TABLE IF EXISTS `cf_extbase_object_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_object_tags`
--

LOCK TABLES `cf_extbase_object_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_object_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_reflection`
--

DROP TABLE IF EXISTS `cf_extbase_reflection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_reflection`
--

LOCK TABLES `cf_extbase_reflection` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_reflection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_reflection_tags`
--

DROP TABLE IF EXISTS `cf_extbase_reflection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_reflection_tags`
--

LOCK TABLES `cf_extbase_reflection_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_queries`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_queries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_queries`
--

LOCK TABLES `cf_extbase_typo3dbbackend_queries` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_queries_tags`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_queries_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_queries_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_queries_tags`
--

LOCK TABLES `cf_extbase_typo3dbbackend_queries_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_tablecolumns`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_tablecolumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_tablecolumns` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_tablecolumns`
--

LOCK TABLES `cf_extbase_typo3dbbackend_tablecolumns` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_tablecolumns_tags`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_tablecolumns_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_tablecolumns_tags`
--

LOCK TABLES `cf_extbase_typo3dbbackend_tablecolumns_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_fluidcontent`
--

DROP TABLE IF EXISTS `cf_fluidcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_fluidcontent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_fluidcontent`
--

LOCK TABLES `cf_fluidcontent` WRITE;
/*!40000 ALTER TABLE `cf_fluidcontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_fluidcontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_fluidcontent_tags`
--

DROP TABLE IF EXISTS `cf_fluidcontent_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_fluidcontent_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_fluidcontent_tags`
--

LOCK TABLES `cf_fluidcontent_tags` WRITE;
/*!40000 ALTER TABLE `cf_fluidcontent_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_fluidcontent_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_vhs_main`
--

DROP TABLE IF EXISTS `cf_vhs_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_vhs_main` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_vhs_main`
--

LOCK TABLES `cf_vhs_main` WRITE;
/*!40000 ALTER TABLE `cf_vhs_main` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_vhs_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_vhs_main_tags`
--

DROP TABLE IF EXISTS `cf_vhs_main_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_vhs_main_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_vhs_main_tags`
--

LOCK TABLES `cf_vhs_main_tags` WRITE;
/*!40000 ALTER TABLE `cf_vhs_main_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_vhs_main_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_vhs_markdown`
--

DROP TABLE IF EXISTS `cf_vhs_markdown`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_vhs_markdown` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_vhs_markdown`
--

LOCK TABLES `cf_vhs_markdown` WRITE;
/*!40000 ALTER TABLE `cf_vhs_markdown` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_vhs_markdown` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_vhs_markdown_tags`
--

DROP TABLE IF EXISTS `cf_vhs_markdown_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_vhs_markdown_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_vhs_markdown_tags`
--

LOCK TABLES `cf_vhs_markdown_tags` WRITE;
/*!40000 ALTER TABLE `cf_vhs_markdown_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_vhs_markdown_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `subgroup` tinytext,
  `TSconfig` text,
  `tx_extbase_type` varchar(255) DEFAULT '0',
  `felogin_redirectPid` tinytext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_session_data`
--

DROP TABLE IF EXISTS `fe_session_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_session_data` (
  `hash` varchar(32) NOT NULL DEFAULT '',
  `content` mediumblob,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hash`),
  KEY `tstamp` (`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_session_data`
--

LOCK TABLES `fe_session_data` WRITE;
/*!40000 ALTER TABLE `fe_session_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_session_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sessions`
--

DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(32) NOT NULL DEFAULT '',
  `ses_name` varchar(32) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` blob,
  `ses_permanent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sessions`
--

LOCK TABLES `fe_sessions` WRITE;
/*!40000 ALTER TABLE `fe_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usergroup` tinytext,
  `disable` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(80) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(50) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `telephone` varchar(20) NOT NULL DEFAULT '',
  `fax` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uc` blob,
  `title` varchar(40) NOT NULL DEFAULT '',
  `zip` varchar(10) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(40) NOT NULL DEFAULT '',
  `www` varchar(80) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `image` tinytext,
  `TSconfig` text,
  `fe_cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `is_online` int(10) unsigned NOT NULL DEFAULT '0',
  `tx_extbase_type` varchar(255) DEFAULT '0',
  `felogin_redirectPid` tinytext,
  `felogin_forgotHash` varchar(80) DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`),
  KEY `username` (`username`),
  KEY `is_online` (`is_online`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `perms_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_user` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_group` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_everybody` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `editlock` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `storage_pid` int(11) NOT NULL DEFAULT '0',
  `is_siteroot` tinyint(4) NOT NULL DEFAULT '0',
  `php_tree_stop` tinyint(4) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `no_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) NOT NULL DEFAULT '0',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `url_scheme` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `target` varchar(80) NOT NULL DEFAULT '',
  `media` text,
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `no_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text,
  `module` varchar(10) NOT NULL DEFAULT '',
  `extendToSubpages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(80) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `nav_hide` tinyint(4) NOT NULL DEFAULT '0',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` tinyint(4) NOT NULL DEFAULT '0',
  `alias` varchar(32) NOT NULL DEFAULT '',
  `l18n_cfg` tinyint(4) NOT NULL DEFAULT '0',
  `fe_login_mode` tinyint(4) NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) DEFAULT '',
  `backend_layout_next_level` varchar(64) DEFAULT '',
  `tx_realurl_pathsegment` varchar(255) NOT NULL DEFAULT '',
  `tx_realurl_pathoverride` int(1) NOT NULL DEFAULT '0',
  `tx_realurl_exclude` int(1) NOT NULL DEFAULT '0',
  `tx_realurl_nocache` int(1) NOT NULL DEFAULT '0',
  `tx_fed_page_flexform` text NOT NULL,
  `tx_fed_page_controller_action` varchar(255) NOT NULL DEFAULT '',
  `tx_fed_page_controller_action_sub` varchar(255) NOT NULL DEFAULT '',
  `categories` int(11) NOT NULL DEFAULT '0',
  `tx_fed_page_flexform_sub` text NOT NULL,
  `tx_fluidpages_templatefile` varchar(255) DEFAULT NULL,
  `tx_fluidpages_layout` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`sorting`),
  KEY `alias` (`alias`),
  KEY `determineSiteRoot` (`deleted`,`hidden`,`is_siteroot`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,0,0,0,'',0,0,0,0,0,0,1413326163,1000000000,1,0,0,0,0,0,0,1367251579,0,0,'Home',1,NULL,0,1,0,0,'',0,0,0,0,0,0,'','',0,0,'','0',0,NULL,0,'',0,NULL,0,1368744262,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"options\">\n            <language index=\"lDEF\">\n                <field index=\"flux.placeholder\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','template->Default','template->Default',0,'',NULL,NULL),(2,1,0,0,0,'',0,0,0,0,0,0,1413326103,1000000000,1,1,0,31,27,0,0,1368537380,1,0,'Home',4,NULL,0,0,0,0,'',0,0,1,1,0,0,'','',0,0,'','0',0,NULL,0,'',0,NULL,0,1368537380,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','',0,0,0,'','','',0,'',NULL,NULL),(3,1,0,0,0,'',0,0,0,0,0,0,1377627606,1000000000,1,1,0,31,27,0,0,1368537380,1,0,'About',1,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,1377627352,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','',0,0,0,'','','',0,'',NULL,NULL),(4,1,0,0,0,'',0,0,0,0,0,0,1413326122,1000000000,1,1,0,31,27,0,0,1368537380,1,0,'Features',1,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,1368537380,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','',0,0,0,'','','',0,'',NULL,NULL),(5,1,0,0,0,'',0,0,0,0,0,0,1413326095,1000000000,1,1,0,31,27,0,0,1368537380,1,0,'Contact',1,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,1368537380,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','',0,0,0,'','','',0,'',NULL,NULL),(6,4,0,0,0,'',0,0,0,0,0,0,1413326118,1000000000,1,1,0,31,27,0,0,1368565750,1,0,'Grid Layout',1,NULL,0,0,0,0,'',0,0,1,0,0,0,'','',0,0,'','0',0,NULL,0,'',0,NULL,0,1368744842,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','',0,0,0,'','','',0,'',NULL,NULL),(7,22,0,0,0,'',0,0,0,0,0,0,1414591992,256,0,1,1,31,31,0,0,1368565750,1,0,'Typography',1,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,1413396683,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','',0,0,0,'','','',0,'',NULL,NULL),(8,4,0,0,0,'',0,0,0,0,0,0,1377625906,1000000000,1,1,0,31,27,0,0,1368565750,1,0,'Thumbnails',1,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','',0,0,0,'','','',0,'',NULL,NULL),(9,4,0,0,0,'',0,0,0,0,0,0,1377625903,1000000000,1,1,0,31,27,0,0,1368565750,1,0,'Components',1,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','',0,0,0,'','','',0,'',NULL,NULL),(10,4,0,0,0,'',0,0,0,0,0,0,1377625911,1000000000,1,1,0,31,27,0,0,1368565750,1,0,'Navigation',1,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,1368565750,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','',0,0,0,'','','',0,'',NULL,NULL),(11,4,0,0,0,'',0,0,0,0,0,0,1377625918,1000000000,1,1,0,31,27,0,0,1368565750,1,0,'Tables',1,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','',0,0,0,'','','',0,'',NULL,NULL),(12,4,0,0,0,'',0,0,0,0,0,0,1377625933,1000000000,1,1,0,31,27,0,0,1368565750,1,0,'Form',1,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','',0,0,0,'','','',0,'',NULL,NULL),(13,4,0,0,0,'',0,0,0,0,0,0,1377625924,1000000000,1,1,0,31,27,0,0,1368565750,1,0,'Icons',1,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','',0,0,0,'','','',0,'',NULL,NULL),(14,4,0,0,0,'',0,0,0,0,0,0,1377625927,1000000000,1,1,0,31,27,0,0,1368565750,1,0,'Buttons',1,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','',0,0,0,'','','',0,'',NULL,NULL),(15,0,0,0,0,'',0,0,0,0,0,0,1377622962,1000000000,1,0,0,0,0,0,0,1368744192,0,0,'Home',0,NULL,0,1,0,0,'',0,0,0,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','',0,0,0,'','','',0,'',NULL,NULL),(16,0,0,0,0,'',0,0,0,0,0,0,1377622965,1000000000,1,0,0,0,0,0,0,1377622729,0,0,'Home',0,NULL,0,1,0,0,'',0,0,0,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','',0,0,0,'','','',0,'',NULL,NULL),(17,1,0,0,0,'',0,0,0,0,0,0,1384444452,1000000000,1,1,0,31,27,0,0,1384443172,1,0,'238u29u3892u389',1,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','',0,0,0,'','','',0,'',NULL,NULL),(18,0,0,0,0,'',0,0,0,0,0,0,1413324959,1000000000,1,0,0,0,0,0,0,1395135471,0,0,'Home',0,NULL,0,1,0,0,'',0,0,0,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','',0,0,0,'','','',0,'',NULL,NULL),(19,0,0,0,0,'',0,0,0,0,0,0,1413326074,1000000000,1,1,0,31,27,0,0,1413325880,1,0,'Home',1,NULL,0,1,0,0,'',0,0,1,0,0,0,'','',0,0,'','0',0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'fluidpages__fluidpages','fluidpages__fluidpages','',0,0,0,'','','',0,'',NULL,NULL),(20,0,0,0,0,'',0,0,0,0,0,0,1414591992,640,0,1,1,31,31,0,0,1413326133,1,0,'Home',1,NULL,0,1,0,0,'',0,0,1,0,0,0,'','',0,0,'','0',0,NULL,0,'',0,NULL,0,1414591992,NULL,'',0,'','','',0,0,0,0,'',0,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"options\">\n            <language index=\"lDEF\">\n                <field index=\"settings.entryLevel\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>\n','template->Default','template->Default',0,'',NULL,NULL),(21,20,0,0,0,'',0,0,0,0,0,0,1414591992,128,0,1,1,31,31,0,0,1413396619,1,0,'Home',4,NULL,0,0,0,0,'',0,0,1,20,0,0,'','',0,0,'','0',0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"options\">\n            <language index=\"lDEF\">\n                <field index=\"settings.entryLevel\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','','',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"options\">\n            <language index=\"lDEF\">\n                <field index=\"settings.entryLevel\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>\n',NULL,NULL),(22,20,0,0,0,'',0,0,0,0,0,0,1414591992,192,0,1,1,31,31,0,0,1413396675,1,0,'Styleguide',1,NULL,0,0,0,0,'',0,0,1,0,0,0,'','',0,0,'','0',0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"options\">\n            <language index=\"lDEF\">\n                <field index=\"settings.entryLevel\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','','',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"options\">\n            <language index=\"lDEF\">\n                <field index=\"settings.entryLevel\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>\n',NULL,NULL);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_language_overlay`
--

DROP TABLE IF EXISTS `pages_language_overlay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_language_overlay` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `media` text,
  `keywords` text,
  `description` text,
  `abstract` text,
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(80) NOT NULL DEFAULT '',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `url` varchar(255) NOT NULL DEFAULT '',
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `tx_realurl_pathsegment` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_language_overlay`
--

LOCK TABLES `pages_language_overlay` WRITE;
/*!40000 ALTER TABLE `pages_language_overlay` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_language_overlay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) NOT NULL DEFAULT '',
  `url` text,
  `description` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sc_group` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_be_shortcuts`
--

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `title` tinytext NOT NULL,
  `description` text NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `items` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  `fieldname` varchar(255) NOT NULL DEFAULT '',
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablenames` (`uid_foreign`,`tablenames`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection`
--

DROP TABLE IF EXISTS `sys_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `fe_group` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `description` text,
  `type` varchar(32) NOT NULL DEFAULT 'static',
  `table_name` tinytext,
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection`
--

LOCK TABLES `sys_collection` WRITE;
/*!40000 ALTER TABLE `sys_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection_entries`
--

DROP TABLE IF EXISTS `sys_collection_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection_entries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection_entries`
--

LOCK TABLES `sys_collection_entries` WRITE;
/*!40000 ALTER TABLE `sys_collection_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_domain`
--

DROP TABLE IF EXISTS `sys_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_domain` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `domainName` varchar(80) NOT NULL DEFAULT '',
  `redirectTo` varchar(255) NOT NULL DEFAULT '',
  `redirectHttpStatusCode` int(4) unsigned NOT NULL DEFAULT '301',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `prepend_params` int(10) NOT NULL DEFAULT '0',
  `forced` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `tx_realurl` (`domainName`,`hidden`),
  KEY `getSysDomain` (`redirectTo`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_domain`
--

LOCK TABLES `sys_domain` WRITE;
/*!40000 ALTER TABLE `sys_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT '',
  `storage` int(11) NOT NULL DEFAULT '0',
  `identifier` text,
  `extension` varchar(255) NOT NULL DEFAULT '',
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `name` tinytext,
  `sha1` tinytext,
  `size` bigint(20) unsigned DEFAULT '0',
  `creation_date` int(11) NOT NULL DEFAULT '0',
  `modification_date` int(11) NOT NULL DEFAULT '0',
  `last_indexed` int(11) NOT NULL DEFAULT '0',
  `missing` tinyint(4) NOT NULL DEFAULT '0',
  `metadata` int(11) NOT NULL DEFAULT '0',
  `identifier_hash` varchar(40) NOT NULL DEFAULT '',
  `folder_hash` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `sha1` (`sha1`(40)),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sel01` (`storage`,`identifier_hash`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES (1,0,1367618869,'2',0,'/typo3/sysext/about/ext_icon.gif','gif','image/gif','ext_icon.gif','359ae0fb420fe8afe1a8b8bc5e46d75090a826b9',637,1367618748,1367618748,0,0,0,'475768e491580fb8b74ed36c2b1aaf619ca5e11d','b4ab666a114d9905a50606d1837b74d952dfd90f'),(2,0,1367618869,'2',0,'/typo3/sysext/aboutmodules/ext_icon.gif','gif','image/gif','ext_icon.gif','9d5fc8f9fab3a3efa46c1842d4f82da55cc93a7f',642,1367618748,1367618748,0,0,0,'953c0cfd2330afa1cb63a41d35ca2c1a67582c73','bf4ded5d1b0bc690036a50be1c1c1b97ba82e149'),(3,0,1367618869,'2',0,'/typo3/sysext/adodb/ext_icon.gif','gif','image/gif','ext_icon.gif','2a54cd4dd32062ae916a12fedfee81c91cd94766',1030,1367618748,1367618748,0,0,0,'5e64d87670b2075f2aabb6cb0bab893d357afc1b','da1400f5cba7b2a5cdccc955a9e59b4897eb59b9'),(4,0,1367618869,'2',0,'/typo3/sysext/backend/ext_icon.png','png','image/png','ext_icon.png','fba9573807897088b0e67958a5f5d1ea96a50fae',344,1367618748,1367618748,0,0,0,'4a25fa6ff6809947d4c1b19d03f57716967d2190','40c9f8337dacc20d615a7d4d22790c29b2e92962'),(5,0,1367618869,'2',0,'/typo3/sysext/belog/ext_icon.gif','gif','image/gif','ext_icon.gif','ee7d55af61353254b82c663a3b532c53ee7324c7',359,1367618748,1367618748,0,0,0,'1cb80d9ba8bdaae7fcb91439c45513f3dc040431','bd58e4162823b2cbdd20ea888993fedc31501f35'),(6,0,1367618869,'2',0,'/typo3/sysext/beuser/ext_icon.gif','gif','image/gif','ext_icon.gif','18ea9ee90f8537b1411a9053de731c6d61de0dbd',157,1367618748,1367618748,0,0,0,'3baffb043243d5325b59a7953c8217ff2632cd13','b8d56bb6de2b178ac5961e55caa12e385a7cfa86'),(7,0,1367618869,'2',0,'/typo3/sysext/cms/ext_icon.gif','gif','image/gif','ext_icon.gif','55d721454b6ae200c9512cc320a7f8c07a4a648e',357,1367618748,1367618748,0,0,0,'c4d7c74d46dcca70ed770ae61c12899ccfa9e8c3','db110bd01f746f9fe0d3d8bb2dfacd62f0f1b471'),(8,0,1367618869,'2',0,'/typo3/sysext/context_help/ext_icon.gif','gif','image/gif','ext_icon.gif','3bf69d49b8f991557bdc7430d533e3cd0794234a',619,1367618748,1367618748,0,0,0,'005ac78fbb956d40e9b9ec0727e5d8509eea8c78','9f612eadfe7e9c00b6c98dd21b203868893f4e2a'),(9,0,1367618869,'2',0,'/typo3/sysext/core/ext_icon.png','png','image/png','ext_icon.png','fba9573807897088b0e67958a5f5d1ea96a50fae',344,1367618748,1367618748,0,0,0,'be2909a0d1d3b8f4ea8b306938b378f4b8180d8c','fc1fc5656927cc9139a4adf8d75c874430a73d6e'),(10,0,1367618869,'2',0,'/typo3/sysext/cshmanual/ext_icon.gif','gif','image/gif','ext_icon.gif','a863b8384991b598fffd6c7a3f301457ba6d49cb',1051,1367618748,1367618748,0,0,0,'e8e01cfc347eca836d4a56e538b0e076daae93e2','4c9418fd8b7990bb247d341f6858ef2e78064a4f'),(11,0,1367618869,'2',0,'/typo3/sysext/css_styled_content/ext_icon.gif','gif','image/gif','ext_icon.gif','0a78cb0d24ff27b8e1183e39d5ac6562a6e545ad',142,1367618748,1367618748,0,0,0,'b01cf23176f2cf8db3ce16df8c160953fb4bc3cb','4a7e325426dc402945fa282a14a8365112e41671'),(12,0,1367618869,'2',0,'/typo3/sysext/dbal/ext_icon.gif','gif','image/gif','ext_icon.gif','2feadd53a6ebcde933910d6a9ee9b00d1c4dcda6',622,1367618748,1367618748,0,0,0,'f37bb424efa40a11adea76832149388963f6b369','8adb0262830ade7ac1b0ec6d43ef121cc54dedd4'),(13,0,1367618869,'2',0,'/typo3/sysext/extbase/ext_icon.gif','gif','image/gif','ext_icon.gif','23c189072cfe4edf1eb5038e4ebc62b013ccd57b',177,1367618748,1367618748,0,0,0,'9327985ed5dc19d26182a8b0e8fd84d7435cde3e','4a649e9ec700a9051e607890bcd2d0c931f0619d'),(14,0,1367618869,'2',0,'/typo3/sysext/extensionmanager/ext_icon.gif','gif','image/gif','ext_icon.gif','e67da46684aa49e6991ded936467fc063936032e',614,1367618748,1367618748,0,0,0,'d29374fffdffe76ce2a5efa2a5bc5c02a4bb221e','e6967054e5b5b90af398f5bfbc53da12064fe3d8'),(15,0,1367618869,'2',0,'/typo3/sysext/extra_page_cm_options/ext_icon.gif','gif','image/gif','ext_icon.gif','a99cc2f0e36d9b7a146e703ad57a485096c70e5d',241,1367618748,1367618748,0,0,0,'42430a24c33751d75a34c688d008e94b351bfbbe','321bce7b912d6b32dcf406834ed02c8d174679d6'),(16,0,1367618869,'2',0,'/typo3/sysext/feedit/ext_icon.gif','gif','image/gif','ext_icon.gif','0d19ca588b292b1e94aefb6fed4e8f2db3e97433',110,1367618748,1367618748,0,0,0,'02e7b3d9aef920361d98b5491cb0f91038bbfbdf','3a040d878a0b40e01c4dbf38253bc96b5bce69cc'),(17,0,1367618869,'2',0,'/typo3/sysext/felogin/ext_icon.gif','gif','image/gif','ext_icon.gif','3e627f00b843d94e3905b4fa490e6d41bdf9c969',194,1367618748,1367618748,0,0,0,'6aafb2fb815166c533545637488c9a4c6625618a','326e54b9cac0d9d0226d5ca72bfcae06fca0df6a'),(18,0,1367618869,'2',0,'/typo3/sysext/filelist/ext_icon.gif','gif','image/gif','ext_icon.gif','8ee012fc11e8da3042bc9a4df1e52109406b0c59',227,1367618748,1367618748,0,0,0,'cd60072aa688ad7ea1368fbd57facf39984d97c3','29d7e4bbb469be43eb51b3be0cb1790eaec09f87'),(19,0,1367618869,'2',0,'/typo3/sysext/fluid/ext_icon.gif','gif','image/gif','ext_icon.gif','23c189072cfe4edf1eb5038e4ebc62b013ccd57b',177,1367618748,1367618748,0,0,0,'ce120a2d94f07b6a438cf2a874a48d49c6a1eb79','cc70be51c20d07e47d764d59d70e6587f8aa4f9d'),(20,0,1367618869,'2',0,'/typo3/sysext/form/ext_icon.gif','gif','image/gif','ext_icon.gif','9c735e89a469f015a4a1c43b3450c783dba8cbe4',622,1367618748,1367618748,0,0,0,'30fe425cf5c96aea46a67a63b4277c5ed1fe01d3','43eca354b72453ca3fe9228e2fa958babf618958'),(21,0,1367618869,'2',0,'/typo3/sysext/frontend/ext_icon.png','png','image/png','ext_icon.png','fba9573807897088b0e67958a5f5d1ea96a50fae',344,1367618748,1367618748,0,0,0,'2a1de8c00ee8aed18d0800f639ea235218554b4a','a34b7811e54914f76ac52a43c0eb8733448be5a8'),(22,0,1367618869,'2',0,'/typo3/sysext/func/ext_icon.gif','gif','image/gif','ext_icon.gif','530725c4a56f8b5b72efd09e6f7cf594f896e8e5',118,1367618748,1367618748,0,0,0,'15efd666d0216e1ef91fcd48e1f4ca1a4f1593c5','7171a84adec8b47f5618a8abaa2e85b4069bd507'),(23,0,1367618869,'2',0,'/typo3/sysext/func_wizards/ext_icon.gif','gif','image/gif','ext_icon.gif','5f4b36af8d29685a9bc44d425104a49334c6d34e',565,1367618748,1367618748,0,0,0,'14ab3266d8ad465ec7c6ebe203debedf23ed85ba','56ccb49e602ae0939a719479668c703fd9ac7f6e'),(24,0,1367618869,'2',0,'/typo3/sysext/impexp/ext_icon.gif','gif','image/gif','ext_icon.gif','21aa38a8577e0c6539a1dcf6bd880c381ec1de46',229,1367618748,1367618748,0,0,0,'5321c4e6315a2cfadfb46a49b1941377302c4274','e4acbf4c444de349b5440ccaa5034b8b33983ac9'),(25,0,1367618869,'2',0,'/typo3/sysext/indexed_search/ext_icon.gif','gif','image/gif','ext_icon.gif','3b1186bfb3b1fe3ed608f68a80949b20e7414a23',90,1367618748,1367618748,0,0,0,'294f7a36c7c4a175436e6f5868b481d970fb1735','1f1ada7eaa8ea91ab6be46e85c4e1cff14083754'),(26,0,1367618869,'2',0,'/typo3/sysext/indexed_search_mysql/ext_icon.gif','gif','image/gif','ext_icon.gif','3b1186bfb3b1fe3ed608f68a80949b20e7414a23',90,1367618748,1367618748,0,0,0,'c166ea679ad78c0506fe70b53a1bf3f0bab45ee9','35e50df318b735257caf5060cc31465f70b3ea5d'),(27,0,1367618869,'2',0,'/typo3/sysext/info/ext_icon.gif','gif','image/gif','ext_icon.gif','d4e3ec69f6c7e02f9d2c5d749024bf46ab0c22e1',1000,1367618748,1367618748,0,0,0,'594e96769eba8cdc6346d3fd513230e0a912f9a2','8e8f282e4804239966669ae2a7ba843f276d3821'),(28,0,1367618869,'2',0,'/typo3/sysext/info_pagetsconfig/ext_icon.gif','gif','image/gif','ext_icon.gif','fb0fb3390936ad820c5b7436cd87d442123bd33d',619,1367618748,1367618748,0,0,0,'363566d5b07226ecf000770784aae8d3cfbbf865','44f18ca3636075dbac842d888a8d0c7d3eb2c0f8'),(29,0,1367618869,'2',0,'/typo3/sysext/install/ext_icon.gif','gif','image/gif','ext_icon.gif','1e092ba01ec0babe2fe1b22b67c45de899c484c8',601,1367618748,1367618748,0,0,0,'7adbe124cc903e49f78fc52d0f0349fc98429744','2b652a29c75ee259075f24bfc16a6e67091c7706'),(30,0,1367618869,'2',0,'/typo3/sysext/lang/ext_icon.gif','gif','image/gif','ext_icon.gif','f35e159406d07c9675830bc51ef14a210f1cab1f',581,1367618748,1367618748,0,0,0,'8c19b92043cb3d65190fcd25299db369f467afe3','202e4087459eef2737ea4e465fb01c9790df2a1b'),(31,0,1367618869,'2',0,'/typo3/sysext/linkvalidator/ext_icon.gif','gif','image/png','ext_icon.gif','cdada35018dfbdd57e6442ea038a0314677d9114',918,1367618748,1367618748,0,0,0,'c587d8d3643275cdf2003912d1e5d764e2e4d1f7','dab664d8abdadf678f95ea46caa8459b748ebf7e'),(32,0,1367618869,'2',0,'/typo3/sysext/lowlevel/ext_icon.gif','gif','image/gif','ext_icon.gif','c182aec01a3225de5f72ef272d0e8a59ec670d93',82,1367618748,1367618748,0,0,0,'3b9a3caba08fcc6b87b7b7883126297e6ef1842a','0040856b368d45bff978b557a3ed9eb8ad526932'),(33,0,1367618869,'2',0,'/typo3/sysext/opendocs/ext_icon.gif','gif','image/gif','ext_icon.gif','54f00d2070213715d290f2f813601a27c5277869',84,1367618748,1367618748,0,0,0,'3730ea7795a2aeec323a2c9cfd81818276b4ca26','87ab54c95a7a6fe46fdfa686d38f35d0d1043d18'),(34,0,1367618869,'2',0,'/typo3/sysext/openid/ext_icon.gif','gif','image/gif','ext_icon.gif','734c40675f05fd730cea8e39c77af5eb47cc4d9b',346,1367618748,1367618748,0,0,0,'7c621f050472ab981c9d62237de1f58dc1b04cb8','0e6ba2596a173df08878584bee6fb074c703d1ce'),(35,0,1367618869,'2',0,'/typo3/sysext/perm/ext_icon.gif','gif','image/png','ext_icon.gif','03717e1ac333d0bef7a33a3ceff1305ef6deecbc',733,1367618748,1367618748,0,0,0,'a71d7efef93d0910be9efa31651d892ddf7b5464','f92b8293d6c0126a3d04b21150bdbcad3912fd93'),(36,0,1367618869,'2',0,'/typo3/sysext/recordlist/ext_icon.gif','gif','image/gif','ext_icon.gif','332e96b6dac59bffa4dbf87137e1fee4f44bd5d3',129,1367618748,1367618748,0,0,0,'eaacffc338413a2c04019f3f6c422fccc4cbe628','6cc2e3e196e1d8530f8cb55a26240e77a922cd69'),(37,0,1367618869,'2',0,'/typo3/sysext/recycler/ext_icon.gif','gif','image/gif','ext_icon.gif','1861cc8eecb71a20e757de83386ba3841ab4da1d',349,1367618748,1367618748,0,0,0,'efd795c169e8fb073f680d39a802dd4a6dab477b','fc0b3f7fa1cadb7bdb4c17114ffbece9d750b651'),(38,0,1367618869,'2',0,'/typo3/sysext/reports/ext_icon.gif','gif','image/gif','ext_icon.gif','ee7d55af61353254b82c663a3b532c53ee7324c7',359,1367618748,1367618748,0,0,0,'174f8c046c62dc5af935f33241682d7563232884','405b75e784f390be8c8932da5a4cc5c2f7261279'),(39,0,1367618869,'2',0,'/typo3/sysext/rsaauth/ext_icon.gif','gif','image/gif','ext_icon.gif','70c2aab11e104ec14fc3934f28201630d0935b8a',850,1367618748,1367618748,0,0,0,'c3440af5d7a7d1905f3821f3c6dce2a7ca9575a7','46d2ddb8fa59b0d58bea31a3503fb5ee64701d1f'),(40,0,1367618869,'2',0,'/typo3/sysext/rtehtmlarea/ext_icon.gif','gif','image/gif','ext_icon.gif','5061eebad398d086cc5dfafb2182c159a723af56',161,1367618748,1367618748,0,0,0,'981f9aaa8e928bc14b295e7376ee0d9b64e4d971','50203df6858e1c9fb1ace95ba589a5aa56dda261'),(41,0,1367618869,'2',0,'/typo3/sysext/saltedpasswords/ext_icon.gif','gif','image/gif','ext_icon.gif','a6a08a082b189dd1f669595ac91fc90fde913e23',282,1367618748,1367618748,0,0,0,'514968f7a98ab86cfa6e6ea448202494a6a5faf5','5a2b41dc2609157b96ad762dfbbc50f850097e80'),(42,0,1367618869,'2',0,'/typo3/sysext/scheduler/ext_icon.gif','gif','image/gif','ext_icon.gif','405729c40df7f0e38105583492a8d33bae1db0fe',667,1367618748,1367618748,0,0,0,'260b788a852a72731319a53f04146c04f256000e','f71ce3cfb7ae4c3d728a4bbfbf655f4afd2f08fb'),(43,0,1367618869,'2',0,'/typo3/sysext/setup/ext_icon.gif','gif','image/gif','ext_icon.gif','efba11523cbede8368582445e9036f4eab580d3f',231,1367618748,1367618748,0,0,0,'88dddc02113aaf26ebde087fe4b65fdef6d3e43d','ee41fe6d36f73c8ff6d63f480705182609fba943'),(44,0,1367618869,'2',0,'/typo3/sysext/sv/ext_icon.gif','gif','image/gif','ext_icon.gif','55d721454b6ae200c9512cc320a7f8c07a4a648e',357,1367618748,1367618748,0,0,0,'112352380e8d894febb82f2466e78d5b3718289b','862bb7da469b0a3ce987692ffc96e5eceed8fa22'),(45,0,1367618869,'2',0,'/typo3/sysext/sys_action/ext_icon.gif','gif','image/gif','ext_icon.gif','fdd57620b7a3a3e9755595363fa207af86f598ff',630,1367618748,1367618748,0,0,0,'8a6d57f26ce9414163f42a5d072d1c1ee8dfe960','2ace69750cc2777caa6843de61b5afd609b6b693'),(46,0,1367618869,'2',0,'/typo3/sysext/sys_note/ext_icon.gif','gif','image/gif','ext_icon.gif','7a97bb0a5cc6e5e0339a1a90f28094a7a41c693f',156,1367618748,1367618748,0,0,0,'fd2676e14c1600c6dd57cd88f41c436f58fbd9a2','bc065e072ab96112d565739a5b9fc38056ff8df8'),(47,0,1367618869,'2',0,'/typo3/sysext/t3editor/ext_icon.gif','gif','image/gif','ext_icon.gif','fb9c533ec6c7536c0f5b4049994d3f9aba80121f',1023,1367618748,1367618748,0,0,0,'5096b17bc96a10d70ee29d81ce423ace96a6f369','86db025af076284a32f3eae107aabac1cf79dc4d'),(48,0,1367618869,'2',0,'/typo3/sysext/t3skin/ext_icon.gif','gif','image/gif','ext_icon.gif','ad4e9bb93928007bad9b98c36a794eaa86544308',254,1367618748,1367618748,0,0,0,'ab2224015da82faa5cebec85e3e2919f2bdf6963','d47b71c2cd67fbc3a6f057aa118520c807d5bd3b'),(49,0,1367618869,'2',0,'/typo3/sysext/taskcenter/ext_icon.gif','gif','image/gif','ext_icon.gif','b4f17c0cd49f4ac83b3fe99946d4df7861f01962',167,1367618749,1367618749,0,0,0,'37f63f80467164f8794f04b7ad1136b9eeac4bc4','bcffc7d404c56a3efa4d32ce47c73509fc9c125e'),(50,0,1367618869,'2',0,'/typo3/sysext/tsconfig_help/ext_icon.gif','gif','image/gif','ext_icon.gif','ce2ce494584ed2b1dae4639a17531a5ea7295dab',1049,1367618749,1367618749,0,0,0,'42fcbe4c6218864bbb95e382e0c86b836efba534','584e05f939955653ec12c09bba3fdd761eaaa70a'),(51,0,1367618869,'2',0,'/typo3/sysext/tstemplate/ext_icon.gif','gif','image/gif','ext_icon.gif','9aa8f313a25f48c65529acdf796557f3149c3c74',99,1367618749,1367618749,0,0,0,'648d3bf717fba0ae5f1b4fe9a7b29b2a1f504000','99d01d9736e8fe8f28384aaf4f7d58f9957eefd8'),(52,0,1367618869,'2',0,'/typo3/sysext/tstemplate_analyzer/ext_icon.gif','gif','image/gif','ext_icon.gif','18b089a7e39a2831d775c54d9b4ad781810dbb0b',366,1367618749,1367618749,0,0,0,'eb201f25d27a448aadb107c8c15c6931095220ac','26c8f3115c5c5514862806f9a8da642b779b061b'),(53,0,1367618869,'2',0,'/typo3/sysext/tstemplate_ceditor/ext_icon.gif','gif','image/gif','ext_icon.gif','bbcb0ff3d075efe84d03ac8a039fcad4dd1027e9',134,1367618749,1367618749,0,0,0,'00b5557ca6bc2a88d87eae00d2abbcf428dca9f3','6638b8d5933f09b658b4c5923c5c88c9c6079f25'),(54,0,1367618869,'2',0,'/typo3/sysext/tstemplate_info/ext_icon.gif','gif','image/gif','ext_icon.gif','e5cc70deccb28078e5840223c70e15a9f70b3de9',194,1367618749,1367618749,0,0,0,'1052b52a1ec30c5f34efa4e0a4a5050132a09a01','fac903d407821fd7be374815bff7e7ec7b855ee7'),(55,0,1367618869,'2',0,'/typo3/sysext/tstemplate_objbrowser/ext_icon.gif','gif','image/gif','ext_icon.gif','56a3a27afae4d201ccbb9b1cd73717e94bb7a940',203,1367618749,1367618749,0,0,0,'82f56448d00010aba0a11cfc888af1b41f942e61','516ccc4b7293d27dc1a9f1e7584f1cf37347bc4c'),(56,0,1367618869,'2',0,'/typo3/sysext/version/ext_icon.gif','gif','image/gif','ext_icon.gif','61c9380cfa98ccc2dbbe8e9bcc94081815bf6109',383,1367618749,1367618749,0,0,0,'f4622de94c37abab8c197aaf3ce85ab501ea063b','51a37793ba3755733fdfb2f93f353af9c666132a'),(57,0,1367618869,'2',0,'/typo3/sysext/viewpage/ext_icon.gif','gif','image/gif','ext_icon.gif','9d5ce162e3a36bc67590ba0c1a5360ab2a83d2e8',367,1367618749,1367618749,0,0,0,'fc882ea71075efa330659a8919e219ee21eb4c09','20e666b4f905444d5e38f3c89e1132921d9a893a'),(58,0,1367618869,'2',0,'/typo3/sysext/wizard_crpages/ext_icon.gif','gif','image/gif','ext_icon.gif','db136645cf980646e414fc50b7c35e9f4a049143',649,1367618749,1367618749,0,0,0,'3da43e8eda1de9c3fd8ed6cf498b999f18e25d52','87bd8aa90aa0626af6bb5312d6c23aadcd7a7427'),(59,0,1367618869,'2',0,'/typo3/sysext/wizard_sortpages/ext_icon.gif','gif','image/gif','ext_icon.gif','86de0fe6bfe0d29b7bf4771b13dde1fc206336a6',206,1367618749,1367618749,0,0,0,'e023d38f091af1dd7e297f30e29f3fad535dd322','c37c82c0ad7429523380299b98c481e2c1295a2b'),(60,0,1367618869,'2',0,'/typo3/sysext/workspaces/ext_icon.gif','gif','image/gif','ext_icon.gif','1d8dd277a444da23b8c4d4da51b477dccacd21de',374,1367618749,1367618749,0,0,0,'5cc5a5b48fb86577a4aad42f84c984a78d7bc270','e23b82ba5e93ac7469fa6535a1d1aa66c9f16fad'),(61,0,1367618869,'2',0,'/typo3conf/ext/template/ext_icon.gif','gif','image/gif','ext_icon.gif','32d129d842d96690c4f1bda69fe2a6f2071f5b93',124,1367618801,1367618801,0,0,0,'211f356b4ef954891c5e3e78f1b3d80b52aab7c2','190f3edbcbdcabee9b6661fa1c59a2465eb7dcea'),(62,0,1367619147,'2',0,'/typo3conf/ext/gridelements/ext_icon.gif','gif','image/gif','ext_icon.gif','25d20f62f1c5fd880664fdecb1f00a191d57a296',189,1367619131,1367619131,0,0,0,'477dd68407531b301b8875b8cd2c28eb60dbf181','8c54bb244f43b78438512c655dc9b56293f378a2'),(63,0,1367619147,'2',0,'/typo3conf/ext/realurl/ext_icon.gif','gif','image/gif','ext_icon.gif','3cec3a19c546a2624f7de555c8be48c9652d46f1',207,1367619144,1367619144,0,0,0,'f90211d67d3991acb90e34b8ef5c4ab04deeed68','409565d20155ddfa63407ce58f125f425455359d'),(64,0,1367619160,'2',0,'/typo3conf/ext/fluidcontent/ext_icon.gif','gif','image/gif','ext_icon.gif','566d752d073bf5d009c01bbc3ad30c9e6b62057f',177,1367619428,1367619428,0,0,0,'15250a4d8092743b395fa2ab69ae9648a39642bc','d5a0c3a21e83a235be4dc8f9720a0786390b2a7a'),(65,0,1367619160,'2',0,'/typo3conf/ext/flux/ext_icon.gif','gif','image/gif','ext_icon.gif','23c189072cfe4edf1eb5038e4ebc62b013ccd57b',177,1367619158,1367619158,0,0,0,'fc1ad94898868d02eec56276dc9ea5f063ed1001','439b0d4df7e72cb51494d5a3f57da40c793a2243'),(66,0,1367619431,'2',0,'/typo3conf/ext/autoswitchtolistview/ext_icon.gif','gif','image/gif','ext_icon.gif','566d752d073bf5d009c01bbc3ad30c9e6b62057f',177,1377621373,1377621373,0,0,0,'1ea361f116fae841b99af7ea2b9f97bdb431d363','604455179079c6f3a55d3f3230652494181f0e5d'),(67,0,1367619431,'2',0,'/typo3conf/ext/fluidpages/ext_icon.gif','gif','image/gif','ext_icon.gif','566d752d073bf5d009c01bbc3ad30c9e6b62057f',177,1367619428,1367619428,0,0,0,'6b79d8e779ee6d4404c3795934e2b8a129c6d898','061d1a11380f9caa9b7b503cf472986a4ec61c0a'),(68,0,1367619431,'2',0,'/typo3conf/ext/seo_basics/ext_icon.gif','gif','image/gif','ext_icon.gif','95845b648bfcd48701b100a78ec925cca243829a',995,1367619427,1367619427,0,0,0,'1819276031d3a4fd357f6a2ad619fd8c79c546f7','69674cf602f9117e9ea3daddb6b7b446af5963b8'),(69,0,1367619431,'2',0,'/typo3conf/ext/vhs/ext_icon.gif','gif','image/gif','ext_icon.gif','566d752d073bf5d009c01bbc3ad30c9e6b62057f',177,1367619427,1367619427,0,0,0,'074f0bb9eb46cca82c7a5b4d32bc1082dc9e39c7','2f662a1846682af798021dddd9bd28640bc29444'),(70,0,1367620575,'2',0,'/typo3conf/ext/ws_less/ext_icon.gif','gif','image/gif','ext_icon.gif','7c694e80cec4516927d079bebe385cd734ae14af',298,1367620545,1367620545,0,0,0,'769e942e58eaf267120647b47fa40b0c69098b0a','a37af0f94eabf8b6fd2c7c00528dc8ac01443d7a'),(71,0,1368537432,'2',0,'/typo3conf/ext/devlog/ext_icon.gif','gif','image/gif','ext_icon.gif','1616622a1b8cdce20417ca146e215d67a7ca76b6',1055,1368537417,1368525898,0,0,0,'d4342d645a0258035961fc4b0ffbe8be43adaa2e','98d444bc9f5617e1954faa2dbfc7dd02624fb532'),(72,0,1390576108,'2',0,'/typo3/sysext/t3skin/icons/gfx/typo3logo.gif','gif','image/gif','typo3logo.gif','4c2fbd1363eb65720601973ccf45d1adeb67509b',1815,1390576104,1386672035,0,0,0,'8582c9690e7fdff1a00d7b69c7be385eb84c7c5e','a8d4b25e71fa900d2494041ee0d2b6cb89fb499e'),(73,0,1395136235,'2',0,'/typo3conf/ext/community/ext_icon.gif','gif','image/gif','ext_icon.gif','eb8a53935bdb6611a88930b9d662823305650ea3',1014,1395136177,1395136177,0,0,0,'2ddecf615e5d2c6c3ef2e45f01bb40a841325ae5','95ac3049c77233a4fc3e9cc0e052c2a284a0dd7f');
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `description` text,
  `type` varchar(30) DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `folder` text NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `file` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `alternative` text,
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
INSERT INTO `sys_file_metadata` VALUES (1,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,1,NULL,16,16,NULL,NULL,0),(2,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,2,NULL,16,16,NULL,NULL,0),(3,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,3,NULL,18,16,NULL,NULL,0),(4,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,4,NULL,16,16,NULL,NULL,0),(5,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,5,NULL,16,16,NULL,NULL,0),(6,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,6,NULL,16,16,NULL,NULL,0),(7,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,7,NULL,18,16,NULL,NULL,0),(8,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,8,NULL,16,16,NULL,NULL,0),(9,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,9,NULL,16,16,NULL,NULL,0),(10,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,10,NULL,16,16,NULL,NULL,0),(11,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,11,NULL,21,18,NULL,NULL,0),(12,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,12,NULL,18,16,NULL,NULL,0),(13,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,13,NULL,18,16,NULL,NULL,0),(14,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,14,NULL,16,16,NULL,NULL,0),(15,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,15,NULL,21,18,NULL,NULL,0),(16,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,16,NULL,18,16,NULL,NULL,0),(17,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,17,NULL,21,18,NULL,NULL,0),(18,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,18,NULL,16,16,NULL,NULL,0),(19,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,19,NULL,18,16,NULL,NULL,0),(20,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,20,NULL,18,16,NULL,NULL,0),(21,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,21,NULL,16,16,NULL,NULL,0),(22,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,22,NULL,18,12,NULL,NULL,0),(23,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,23,NULL,16,16,NULL,NULL,0),(24,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,24,NULL,16,16,NULL,NULL,0),(25,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,25,NULL,15,12,NULL,NULL,0),(26,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,26,NULL,15,12,NULL,NULL,0),(27,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,27,NULL,16,16,NULL,NULL,0),(28,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,28,NULL,21,18,NULL,NULL,0),(29,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,29,NULL,16,16,NULL,NULL,0),(30,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,30,NULL,16,16,NULL,NULL,0),(31,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,31,NULL,16,16,NULL,NULL,0),(32,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,32,NULL,14,12,NULL,NULL,0),(33,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,33,NULL,14,12,NULL,NULL,0),(34,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,34,NULL,16,16,NULL,NULL,0),(35,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,35,NULL,16,16,NULL,NULL,0),(36,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,36,NULL,16,16,NULL,NULL,0),(37,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,37,NULL,16,16,NULL,NULL,0),(38,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,38,NULL,16,16,NULL,NULL,0),(39,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,39,NULL,16,16,NULL,NULL,0),(40,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,40,NULL,18,16,NULL,NULL,0),(41,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,41,NULL,16,16,NULL,NULL,0),(42,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,42,NULL,16,16,NULL,NULL,0),(43,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,43,NULL,16,16,NULL,NULL,0),(44,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,44,NULL,18,16,NULL,NULL,0),(45,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,45,NULL,16,16,NULL,NULL,0),(46,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,46,NULL,18,16,NULL,NULL,0),(47,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,47,NULL,16,16,NULL,NULL,0),(48,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,48,NULL,21,18,NULL,NULL,0),(49,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,49,NULL,16,16,NULL,NULL,0),(50,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,50,NULL,16,16,NULL,NULL,0),(51,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,51,NULL,17,12,NULL,NULL,0),(52,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,52,NULL,21,18,NULL,NULL,0),(53,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,53,NULL,21,18,NULL,NULL,0),(54,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,54,NULL,21,18,NULL,NULL,0),(55,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,55,NULL,21,18,NULL,NULL,0),(56,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,56,NULL,16,16,NULL,NULL,0),(57,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,57,NULL,16,16,NULL,NULL,0),(58,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,58,NULL,21,18,NULL,NULL,0),(59,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,59,NULL,21,18,NULL,NULL,0),(60,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,60,NULL,16,16,NULL,NULL,0),(61,0,1367618869,1367618869,1,0,0,'',0,0,0,'',0,0,0,0,0,0,61,NULL,18,16,NULL,NULL,0),(62,0,1367619147,1367619147,1,0,0,'',0,0,0,'',0,0,0,0,0,0,62,NULL,16,16,NULL,NULL,0),(63,0,1367619147,1367619147,1,0,0,'',0,0,0,'',0,0,0,0,0,0,63,NULL,21,18,NULL,NULL,0),(64,0,1367619160,1367619160,1,0,0,'',0,0,0,'',0,0,0,0,0,0,64,NULL,18,16,NULL,NULL,0),(65,0,1367619160,1367619160,1,0,0,'',0,0,0,'',0,0,0,0,0,0,65,NULL,18,16,NULL,NULL,0),(66,0,1367619431,1367619431,1,0,0,'',0,0,0,'',0,0,0,0,0,0,66,NULL,18,16,NULL,NULL,0),(67,0,1367619431,1367619431,1,0,0,'',0,0,0,'',0,0,0,0,0,0,67,NULL,18,16,NULL,NULL,0),(68,0,1367619431,1367619431,1,0,0,'',0,0,0,'',0,0,0,0,0,0,68,NULL,18,16,NULL,NULL,0),(69,0,1367619431,1367619431,1,0,0,'',0,0,0,'',0,0,0,0,0,0,69,NULL,18,16,NULL,NULL,0),(70,0,1367620575,1367620575,1,0,0,'',0,0,0,'',0,0,0,0,0,0,70,NULL,18,16,NULL,NULL,0),(71,0,1368537432,1368537432,1,0,0,'',0,0,0,'',0,0,0,0,0,0,71,NULL,16,16,NULL,NULL,0),(72,0,1390576108,1390576108,1,0,0,'',0,0,0,'',0,0,0,0,0,0,72,NULL,128,59,NULL,NULL,0),(73,0,1395136235,1395136235,1,0,0,'',0,0,0,'',0,0,0,0,0,0,73,NULL,16,16,NULL,NULL,0);
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `original` int(11) NOT NULL DEFAULT '0',
  `identifier` varchar(512) DEFAULT '',
  `name` tinytext,
  `configuration` text,
  `originalfilesha1` varchar(40) NOT NULL DEFAULT '',
  `task_type` varchar(200) NOT NULL DEFAULT '',
  `checksum` varchar(255) NOT NULL DEFAULT '',
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  `configurationsha1` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`,`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(199))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(10) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) DEFAULT '',
  `fieldname` varchar(64) DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  `table_local` varchar(64) DEFAULT '',
  `title` tinytext,
  `description` text,
  `alternative` tinytext,
  `link` varchar(1024) DEFAULT '',
  `downloadname` tinytext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(30) DEFAULT '',
  `description` text,
  `driver` tinytext,
  `configuration` text,
  `is_browsable` tinyint(4) NOT NULL DEFAULT '0',
  `is_public` tinyint(4) NOT NULL DEFAULT '0',
  `is_writable` tinyint(4) NOT NULL DEFAULT '0',
  `is_online` tinyint(4) NOT NULL DEFAULT '1',
  `processingfolder` tinytext,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `deleted_hidden` (`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1414590374,1367268010,0,0,0,'fileadmin/ (auto-created)','This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,NULL,1);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `path` varchar(120) NOT NULL DEFAULT '',
  `base` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
INSERT INTO `sys_filemounts` VALUES (1,0,1414590396,'Dateisystem','/',1,0,0,256);
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_history`
--

DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_log_uid` int(11) NOT NULL DEFAULT '0',
  `history_data` mediumtext,
  `fieldlist` text,
  `recuid` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `history_files` mediumtext,
  `snapshot` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `recordident_1` (`tablename`,`recuid`),
  KEY `recordident_2` (`tablename`,`tstamp`),
  KEY `sys_log_uid` (`sys_log_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_language`
--

DROP TABLE IF EXISTS `sys_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_language` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `flag` varchar(20) NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_language`
--

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `record_table` varchar(255) NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT '0',
  `record_pid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `feuserid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `recuid` int(11) unsigned NOT NULL DEFAULT '0',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT '0',
  `error` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `details` text NOT NULL,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `details_nr` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `IP` varchar(39) NOT NULL DEFAULT '',
  `log_data` text,
  `event_pid` int(11) NOT NULL DEFAULT '-1',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `NEWid` varchar(20) NOT NULL DEFAULT '',
  `request_id` varchar(13) NOT NULL DEFAULT '',
  `time_micro` float NOT NULL DEFAULT '0',
  `component` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message` text,
  `data` text,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`,`uid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES (1,0,0,3,0,'',0,3,'Login-attempt from %s (%s), username \'%s\', password not accepted!',1414592586,255,1,'::1','a:3:{i:0;s:3:\"::1\";i:1;s:0:\"\";i:2;s:5:\"admin\";}',-1,-99,'','',0,'',0,NULL,NULL),(2,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1414592597,255,1,'::1','a:3:{i:0;s:5:\"admin\";i:1;s:3:\"::1\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(3,0,1,3,24,'tt_content',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1414592608,1,0,'::1','a:4:{i:0;s:10:\"[No title]\";i:1;s:13:\"tt_content:24\";i:2;s:4:\"Home\";i:3;s:2:\"20\";}',20,0,'','',0,'',0,NULL,NULL);
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_news` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` mediumtext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_note`
--

DROP TABLE IF EXISTS `sys_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_note` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser` int(11) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text,
  `personal` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_note`
--

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_preview`
--

DROP TABLE IF EXISTS `sys_preview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_preview` (
  `keyword` varchar(32) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `config` text,
  PRIMARY KEY (`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_preview`
--

LOCK TABLES `sys_preview` WRITE;
/*!40000 ALTER TABLE `sys_preview` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_preview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) NOT NULL DEFAULT '',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT '0',
  `field` varchar(40) NOT NULL DEFAULT '',
  `flexpointer` varchar(255) NOT NULL DEFAULT '',
  `softref_key` varchar(30) NOT NULL DEFAULT '',
  `softref_id` varchar(40) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `ref_table` varchar(255) NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT '0',
  `ref_string` varchar(200) NOT NULL DEFAULT '',
  `workspace` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`,`recuid`),
  KEY `lookup_uid` (`ref_table`,`ref_uid`),
  KEY `lookup_string` (`ref_string`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
INSERT INTO `sys_refindex` VALUES ('039129b62486949fc84ba5bf69c569c9','be_groups',1,'db_mountpoints','','','',0,0,'pages',20,'',0),('0ce7522bc03423985f9d5cadc68afc2d','pages',15,'media','','','',0,1,'',0,'',0),('10ddd0f3ac886d6e0203d296fadd54ea','tt_content',2,'image','','','',0,1,'',0,'',0),('1190f192aefef435dffddf950203aa78','tt_content',7,'image','','','',0,1,'',0,'',0),('1ac50d26f82f4611b3c20a7ffc115d14','tt_content',22,'media','','','',0,1,'',0,'',0),('1defa17452401d557fa4c9fd576b103f','tt_content',4,'media','','','',0,1,'',0,'',0),('1fb3d91ca3df61314e0e306538704c5f','pages',5,'media','','','',0,0,'',0,'',0),('212f0c9338d50ac4402055bb438d935d','pages',9,'media','','','',0,1,'',0,'',0),('232542fcc13112cd43ba4dc0c7799e81','pages',2,'shortcut','','','',0,0,'pages',1,'',0),('2697e46a78aa230e3f83b3fcd3267570','tt_content',9,'image','','','',0,0,'',0,'',0),('28df76de4d9541b368aee5a371c8f06e','tt_content',4,'image','','','',0,1,'',0,'',0),('2936394c048b0b1aec9b6b3c39e4508d','tt_content',7,'media','','','',0,1,'',0,'',0),('2a53abbcebc93b38883203f3aee28034','pages',16,'media','','','',0,1,'',0,'',0),('2b927a922c6eef4508523358e5bfe92f','tt_content',2,'media','','','',0,1,'',0,'',0),('3475342c8d4b2839278d50353cdd3b1e','pages',1,'media','','','',0,0,'',0,'',0),('392a1a4c95d9c0df474b2f5691ff0d92','tt_content',22,'image','','','',0,1,'',0,'',0),('45e2b038be122622580fbee2cd1a7475','tt_content',21,'image','','','',0,1,'',0,'',0),('46e28a5fb05b124ee6d80619b9429b44','tt_content',11,'image','','','',0,0,'',0,'',0),('4acf984a3cfe9e18bbd2d94ca68241f3','pages',11,'media','','','',0,1,'',0,'',0),('4beb82dd11380dd349ad5a4afe0de20c','pages',21,'shortcut','','','',0,0,'pages',20,'',0),('59ab8ed0c31cb658632254457da93a75','tt_content',10,'image','','','',0,0,'',0,'',0),('604cc817f6613231fc71c6f48be1e487','tt_content',3,'image','','','',0,1,'',0,'',0),('60bfe3b9b546c7619d087933c1ebc6db','pages',14,'media','','','',0,1,'',0,'',0),('62f0bea308765761a31c766a8daf45d8','tt_content',23,'image','','','',0,1,'',0,'',0),('64d7cf1e1d40aed960ff20a483e4ebad','tt_content',21,'media','','','',0,1,'',0,'',0),('6804357b9f7d3faec43c64f4a26d5fec','tt_content',23,'media','','','',0,1,'',0,'',0),('7046b4ece8bbd63534ea503a8c77ba18','tt_content',3,'media','','','',0,1,'',0,'',0),('704a508d3d5e584af33fc8931c15ff40','pages',3,'media','','','',0,1,'',0,'',0),('77b910940de10b4119fc3cce3bcdb9e9','be_groups',1,'file_mountpoints','','','',0,0,'sys_filemounts',1,'',0),('7854a8ff66accebcd11438b73c187ca6','pages',12,'media','','','',0,1,'',0,'',0),('7f4d02b63409b8b82198c94b8c6aa61d','pages',10,'media','','','',0,1,'',0,'',0),('824d92e3da5c0b1a5e01a01076c6b587','tt_content',20,'image','','','',0,1,'',0,'',0),('8cd04d53eaad003c85902d0e5357969f','tt_content',12,'media','','','',0,0,'',0,'',0),('8fbe20a7707454576c76b5237cfd22a3','pages',8,'media','','','',0,1,'',0,'',0),('9aced7e69fe94ac0ea6da16a532562fd','tt_content',9,'media','','','',0,0,'',0,'',0),('9b82dfaecb82cb2b683fc8094a161e2c','tt_content',8,'tx_flux_parent','','','',0,1,'tt_content',7,'',0),('a29a90e1d8a562fcdf2a2b0f0d9d9e77','pages',6,'media','','','',0,0,'',0,'',0),('a77b9c4d70bb24ae446abb9cefdd25a2','tt_content',20,'media','','','',0,1,'',0,'',0),('a843c4816373aec1766e029077f03d75','tt_content',8,'media','','','',0,1,'',0,'',0),('c183c50a50f42cfc491ce5f2d3327ad6','tt_content',12,'image','','','',0,0,'',0,'',0),('c381f389fc74a2e700dad92f6ebd34f6','pages',13,'media','','','',0,1,'',0,'',0),('ce8cb8de0845cbef26e3f0f6f55e1560','pages',4,'media','','','',0,0,'',0,'',0),('cea01e47782529a233136d2ace53dd14','tt_content',10,'media','','','',0,0,'',0,'',0),('e2773d9ceb38ef665316861a191468a6','sys_filemounts',1,'base','','','',0,0,'sys_file_storage',1,'',0),('e3c10bedc0113e0844263f36fadad78c','tt_content',8,'image','','','',0,1,'',0,'',0),('ee1165b91133aa3ed87cb5365aab8c13','pages',2,'media','','','',0,0,'',0,'',0),('f2ad757feabf79283e1814d9b504e68b','pages',17,'media','','','',0,1,'',0,'',0),('f6f2f4821ac906a48b51b1f5a14ea483','tt_content',11,'media','','','',0,0,'',0,'',0);
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) NOT NULL DEFAULT '',
  `entry_key` varchar(128) NOT NULL DEFAULT '',
  `entry_value` blob,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'core','formSessionToken:1','s:64:\"a4a7986f921a9099a3ed81fb27e78b8305a96e7b41372fe44ed3c8c1539969d9\";'),(2,'TYPO3.CMS.Install','coreVersionMatrix','a:6:{s:3:\"6.2\";a:4:{s:8:\"releases\";a:19:{s:5:\"6.2.6\";a:5:{s:7:\"version\";s:5:\"6.2.6\";s:4:\"date\";s:23:\"2014-10-22 08:49:09 UTC\";s:4:\"type\";s:8:\"security\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"3da960d90a4a34e09aad2b1be64c0fe7\";s:4:\"sha1\";s:40:\"72ce60bf85951cbf99dcbaee37e7c2e1477bd050\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"b1285c999f5778653e8a5bc75f0ed656\";s:4:\"sha1\";s:40:\"95c83942b803c0a08a3e8501d3449197335ea257\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:30:\"http://get.typo3.org/6.2.6/zip\";s:3:\"tar\";s:26:\"http://get.typo3.org/6.2.6\";}}s:5:\"6.2.5\";a:5:{s:7:\"version\";s:5:\"6.2.5\";s:4:\"date\";s:23:\"2014-09-23 13:13:34 UTC\";s:4:\"type\";s:7:\"regular\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"b011fe9a965ca97473dd30d1f6a0fb2c\";s:4:\"sha1\";s:40:\"21e475a393275b905159d7e6466f9e8532a8cfcd\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"4011750ad515f521cf486bc00b6cf5e9\";s:4:\"sha1\";s:40:\"475dd82eda7d9a557fa9da4876dd30e01196fd5f\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:30:\"http://get.typo3.org/6.2.5/zip\";s:3:\"tar\";s:26:\"http://get.typo3.org/6.2.5\";}}s:5:\"6.2.4\";a:5:{s:7:\"version\";s:5:\"6.2.4\";s:4:\"date\";s:23:\"2014-07-08 12:50:00 UTC\";s:4:\"type\";s:7:\"regular\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"0f970b4fc7dfdcf62181713f9ea8d8e5\";s:4:\"sha1\";s:40:\"8eac119c545c6e42a8ab377df3a60cea5f23d762\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"96e18faf537d9ded3d47ff4859342dcf\";s:4:\"sha1\";s:40:\"14589d4dee5839fa82543efe0e53fde0fce320b4\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:30:\"http://get.typo3.org/6.2.4/zip\";s:3:\"tar\";s:26:\"http://get.typo3.org/6.2.4\";}}s:5:\"6.2.3\";a:5:{s:7:\"version\";s:5:\"6.2.3\";s:4:\"date\";s:23:\"2014-05-22 08:20:42 UTC\";s:4:\"type\";s:8:\"security\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"e7cbe7686424ab74bbd8235baf5259f1\";s:4:\"sha1\";s:40:\"5b0dcd6f9fada78f15dee5e3cf5e3eea0617b7da\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"24960795480790aa30c47cf2b4c556ba\";s:4:\"sha1\";s:40:\"8613d07c60036f211a1a80071453a088fe304070\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:30:\"http://get.typo3.org/6.2.3/zip\";s:3:\"tar\";s:26:\"http://get.typo3.org/6.2.3\";}}s:5:\"6.2.2\";a:5:{s:7:\"version\";s:5:\"6.2.2\";s:4:\"date\";s:23:\"2014-05-06 21:58:08 UTC\";s:4:\"type\";s:7:\"regular\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"f399c1a543fe8780ddb5b1d493d45390\";s:4:\"sha1\";s:40:\"ebfcfd7552715fead056b852839d7019867d5d23\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"cf640aad02cf559d5bf60af8c9b4c0cd\";s:4:\"sha1\";s:40:\"6a65065830ea5fc2d9b8a0872b861eb9458196ce\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:30:\"http://get.typo3.org/6.2.2/zip\";s:3:\"tar\";s:26:\"http://get.typo3.org/6.2.2\";}}s:5:\"6.2.1\";a:5:{s:7:\"version\";s:5:\"6.2.1\";s:4:\"date\";s:23:\"2014-04-16 21:35:38 UTC\";s:4:\"type\";s:7:\"regular\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"c0b26d2ff257536c5b8367f853951113\";s:4:\"sha1\";s:40:\"791445d3319607ab475e2344ce85689ccbaa7e65\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"e9e536e8d8ce6bf1f8a5c6ae744cbc7f\";s:4:\"sha1\";s:40:\"36200410cd244bc71fc7402803e318c46e953992\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:30:\"http://get.typo3.org/6.2.1/zip\";s:3:\"tar\";s:26:\"http://get.typo3.org/6.2.1\";}}s:5:\"6.2.0\";a:5:{s:7:\"version\";s:5:\"6.2.0\";s:4:\"date\";s:23:\"2014-03-25 17:34:43 UTC\";s:4:\"type\";s:7:\"release\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"17b56d6cc10876020dfdfaa3f6fec123\";s:4:\"sha1\";s:40:\"4911c9bab620cb66d7660eac05ddd0a5048b8b24\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"efc1ef2c43050e11f39bcc132f7dba61\";s:4:\"sha1\";s:40:\"1448257039b9ba2d65a0752f368c04351716b1e0\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:30:\"http://get.typo3.org/6.2.0/zip\";s:3:\"tar\";s:26:\"http://get.typo3.org/6.2.0\";}}s:8:\"6.2.0rc2\";a:5:{s:7:\"version\";s:8:\"6.2.0rc2\";s:4:\"date\";s:23:\"2014-03-25 02:05:52 UTC\";s:4:\"type\";s:11:\"development\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"d3283c8a5d52a6b40c7698a67b54ac75\";s:4:\"sha1\";s:40:\"44b0bcd65f6ae3f0383f2630cc00deaafbca9c9d\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"cca7a7ae0e2ca41167947dece74cc545\";s:4:\"sha1\";s:40:\"cd877bc6bdba1e30efc3e44f53d8d81a5c7d257b\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:33:\"http://get.typo3.org/6.2.0rc2/zip\";s:3:\"tar\";s:29:\"http://get.typo3.org/6.2.0rc2\";}}s:8:\"6.2.0rc1\";a:5:{s:7:\"version\";s:8:\"6.2.0rc1\";s:4:\"date\";s:23:\"2014-03-22 01:50:38 UTC\";s:4:\"type\";s:11:\"development\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"d3b284e78231b09e9e31f939e281c6aa\";s:4:\"sha1\";s:40:\"2ef947336a7807e56c86d63111be99d58705c9a8\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"edf9be995e41a8ede64d1c4ba59d52dc\";s:4:\"sha1\";s:40:\"7db05dfee0f8c08edb46829849f019cec451987b\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:33:\"http://get.typo3.org/6.2.0rc1/zip\";s:3:\"tar\";s:29:\"http://get.typo3.org/6.2.0rc1\";}}s:10:\"6.2.0beta7\";a:5:{s:7:\"version\";s:10:\"6.2.0beta7\";s:4:\"date\";s:23:\"2014-03-16 03:38:03 UTC\";s:4:\"type\";s:11:\"development\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"6a0256a39532bbf24b36b4484c2b0277\";s:4:\"sha1\";s:40:\"05c654987a0889e2644602f5c5fa1a85265259f7\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"9377c7f78bdbdeba1e863d61df849ac8\";s:4:\"sha1\";s:40:\"f813d16f3eddd71dd89b88b6aa6a39a6ddcc1dae\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:35:\"http://get.typo3.org/6.2.0beta7/zip\";s:3:\"tar\";s:31:\"http://get.typo3.org/6.2.0beta7\";}}s:10:\"6.2.0beta6\";a:5:{s:7:\"version\";s:10:\"6.2.0beta6\";s:4:\"date\";s:23:\"2014-03-04 20:34:17 UTC\";s:4:\"type\";s:11:\"development\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"3617dab77b15491a596cf4cfbbf70234\";s:4:\"sha1\";s:40:\"cf2584dd2019486914ec8e6eb9106737186eff94\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"15d4f93645877a7c23695c3f41174d6f\";s:4:\"sha1\";s:40:\"b11453504d73c9cdd75c9517423258f24c62afcd\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:35:\"http://get.typo3.org/6.2.0beta6/zip\";s:3:\"tar\";s:31:\"http://get.typo3.org/6.2.0beta6\";}}s:10:\"6.2.0beta5\";a:5:{s:7:\"version\";s:10:\"6.2.0beta5\";s:4:\"date\";s:23:\"2014-02-04 18:45:38 UTC\";s:4:\"type\";s:11:\"development\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"b0d57d7b63d1c88d99d3b21c9138893f\";s:4:\"sha1\";s:40:\"95fc8d8fbcd23b15275401bc951c0ad89f6e79ad\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"ac36d0b486e1678ba920ffb75995fa07\";s:4:\"sha1\";s:40:\"52306d6780f73071fe6f75dde6c5d95589298c29\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:35:\"http://get.typo3.org/6.2.0beta5/zip\";s:3:\"tar\";s:31:\"http://get.typo3.org/6.2.0beta5\";}}s:10:\"6.2.0beta4\";a:5:{s:7:\"version\";s:10:\"6.2.0beta4\";s:4:\"date\";s:23:\"2014-01-17 19:20:42 UTC\";s:4:\"type\";s:11:\"development\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"456090b1a012d612223c04bbf1d66cb6\";s:4:\"sha1\";s:40:\"7f3f6d2d9648bf77d3d0df58904cc7615e3f007e\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"9b70d8e81982e6490a5134c549795ab3\";s:4:\"sha1\";s:40:\"0eb0ec70359fdcf7d077adbae7657c696b1202bc\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:35:\"http://get.typo3.org/6.2.0beta4/zip\";s:3:\"tar\";s:31:\"http://get.typo3.org/6.2.0beta4\";}}s:10:\"6.2.0beta3\";a:5:{s:7:\"version\";s:10:\"6.2.0beta3\";s:4:\"date\";s:23:\"2013-12-19 15:24:54 UTC\";s:4:\"type\";s:11:\"development\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"c8b7ff8cf9e51fe46e0867ebc750ae15\";s:4:\"sha1\";s:40:\"ff9ff20b39f8304d76109ff88173156f6ca72232\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"092df23deca99b58657cce7ddb0ad062\";s:4:\"sha1\";s:40:\"c95c5f7e91436bd5f701a5f9be2d46252d7ac536\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:35:\"http://get.typo3.org/6.2.0beta3/zip\";s:3:\"tar\";s:31:\"http://get.typo3.org/6.2.0beta3\";}}s:10:\"6.2.0beta2\";a:5:{s:7:\"version\";s:10:\"6.2.0beta2\";s:4:\"date\";s:23:\"2013-11-21 19:50:17 UTC\";s:4:\"type\";s:11:\"development\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"d0806b18c28f3e72415160853bcb0e23\";s:4:\"sha1\";s:40:\"665627d613e5159328681911bb584b535e5b0afc\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"50cd865600cd058a23dcff77ed6cac06\";s:4:\"sha1\";s:40:\"cd1298605180236832fdf21a55dfe3ef7d0bc269\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:35:\"http://get.typo3.org/6.2.0beta2/zip\";s:3:\"tar\";s:31:\"http://get.typo3.org/6.2.0beta2\";}}s:10:\"6.2.0beta1\";a:5:{s:7:\"version\";s:10:\"6.2.0beta1\";s:4:\"date\";s:23:\"2013-10-15 16:47:38 UTC\";s:4:\"type\";s:11:\"development\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"b8f4a35d01706ec0b0fc0d3c4d80d8c1\";s:4:\"sha1\";s:40:\"beb6f1c44f9a67ab88e57e818633ee64ab24456e\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"1b7cddabe643f4f0f7492b0f68a87c52\";s:4:\"sha1\";s:40:\"a4e7ed749dd8447ab34d440e8cfd0ad6030c7165\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:35:\"http://get.typo3.org/6.2.0beta1/zip\";s:3:\"tar\";s:31:\"http://get.typo3.org/6.2.0beta1\";}}s:11:\"6.2.0alpha3\";a:5:{s:7:\"version\";s:11:\"6.2.0alpha3\";s:4:\"date\";s:23:\"2013-10-01 18:24:25 UTC\";s:4:\"type\";s:11:\"development\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"e91acf53bb03cb943bd27e76643901c5\";s:4:\"sha1\";s:40:\"3dc156eed4b99577232f537d798a8691493f8a83\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"f8d166e9979a43490ec0ae03e0ff46a1\";s:4:\"sha1\";s:40:\"87448a8745b6eae36bd1e7cb6705a42771edfa03\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:36:\"http://get.typo3.org/6.2.0alpha3/zip\";s:3:\"tar\";s:32:\"http://get.typo3.org/6.2.0alpha3\";}}s:11:\"6.2.0alpha2\";a:5:{s:7:\"version\";s:11:\"6.2.0alpha2\";s:4:\"date\";s:23:\"2013-07-11 13:34:39 UTC\";s:4:\"type\";s:11:\"development\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"d528f7abe0290bfb4302b7ef7b64a2fe\";s:4:\"sha1\";s:40:\"bf50ae8180604a8232fba3f70380da650b3266a1\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"d71b97d09cb1719b76ba3bd86efaba19\";s:4:\"sha1\";s:40:\"73a6d9478fef4a9949931152bcecc82caa0cc0c8\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:36:\"http://get.typo3.org/6.2.0alpha2/zip\";s:3:\"tar\";s:32:\"http://get.typo3.org/6.2.0alpha2\";}}s:11:\"6.2.0alpha1\";a:5:{s:7:\"version\";s:11:\"6.2.0alpha1\";s:4:\"date\";s:23:\"2013-06-04 21:01:54 UTC\";s:4:\"type\";s:11:\"development\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"74459680910c4982b3368a9b8e6b6aa7\";s:4:\"sha1\";s:40:\"6989d344fbaa6cdc4f0cf87684403f795fe5a97f\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"6cd76c5885f0e001599ae6c621cc0614\";s:4:\"sha1\";s:40:\"60576909d38084bcba4360bdc0f734540725f615\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:36:\"http://get.typo3.org/6.2.0alpha1/zip\";s:3:\"tar\";s:32:\"http://get.typo3.org/6.2.0alpha1\";}}}s:6:\"latest\";s:5:\"6.2.6\";s:6:\"stable\";s:5:\"6.2.6\";s:6:\"active\";b:1;}s:13:\"latest_stable\";s:5:\"6.2.6\";s:17:\"latest_old_stable\";s:6:\"6.1.12\";s:10:\"latest_lts\";s:5:\"6.2.6\";s:14:\"latest_old_lts\";s:6:\"4.5.37\";s:17:\"latest_deprecated\";s:6:\"4.7.20\";}'),(3,'extensionDataImport','typo3conf/ext/autoswitchtolistview/ext_tables_static+adt.sql','i:1;'),(4,'extensionDataImport','typo3conf/ext/realurl/ext_tables_static+adt.sql','i:1;'),(5,'extensionDataImport','typo3/sysext/beuser/ext_tables_static+adt.sql','i:1;'),(6,'extensionDataImport','typo3conf/ext/flux/ext_tables_static+adt.sql','i:1;'),(7,'extensionDataImport','typo3conf/ext/fluidcontent/ext_tables_static+adt.sql','i:1;'),(8,'extensionDataImport','typo3conf/ext/fluidpages/ext_tables_static+adt.sql','i:1;'),(9,'extensionDataImport','typo3conf/ext/vhs/ext_tables_static+adt.sql','i:1;');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `sitetitle` varchar(255) NOT NULL DEFAULT '',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `root` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `clear` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `include_static_file` text,
  `constants` text,
  `config` text,
  `nextLevel` varchar(5) NOT NULL DEFAULT '',
  `description` text,
  `basedOn` tinytext,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeStaticAfterBasedOn` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `static_file_mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `tx_realurl` (`root`,`hidden`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,20,0,0,0,'',0,0,0,0,0,1413326160,256,1367251579,0,'Default Root Template','',0,0,0,1,1,'EXT:fluid/Configuration/TypoScript,EXT:rtehtmlarea/static/clickenlarge/,EXT:css_styled_content/static/,EXT:form/Configuration/TypoScript/,EXT:fluidpages/Configuration/TypoScript,EXT:fluidcontent_bootstrap/Configuration/TypoScript,EXT:gridelements/Configuration/TypoScript/,EXT:template/Configuration/TypoScript/',NULL,NULL,'',NULL,NULL,0,0,0,0),(2,15,0,0,0,'',0,0,0,0,0,1377622962,1000000000,1368744192,0,'Default Root Template','',0,0,0,1,1,NULL,NULL,NULL,'',NULL,NULL,1,0,0,0),(3,16,0,0,0,'',0,0,0,0,0,1377622965,1000000000,1377622729,0,'Default Root Template','',0,0,0,1,1,NULL,NULL,NULL,'',NULL,NULL,1,0,0,0),(4,18,0,0,0,'',0,0,0,0,0,1413324959,1000000000,1395135471,0,'Default Root Template','',0,0,0,1,1,NULL,NULL,NULL,'',NULL,NULL,1,0,0,0);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `CType` varchar(255) NOT NULL DEFAULT '',
  `header` varchar(255) NOT NULL DEFAULT '',
  `header_position` varchar(6) NOT NULL DEFAULT '',
  `bodytext` mediumtext,
  `image` text,
  `imagewidth` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `imageorient` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imagecaption` text,
  `imagecols` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imageborder` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `media` text,
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `cols` int(11) unsigned NOT NULL DEFAULT '0',
  `records` text,
  `pages` tinytext,
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `colPos` int(11) unsigned DEFAULT '0',
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `spaceBefore` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spaceAfter` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) NOT NULL DEFAULT '0',
  `header_link` varchar(1024) DEFAULT '',
  `imagecaption_position` varchar(6) NOT NULL DEFAULT '',
  `image_link` text,
  `image_zoom` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image_noRows` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image_effects` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image_compression` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `altText` text,
  `titleText` text,
  `longdescURL` text,
  `header_layout` varchar(30) NOT NULL DEFAULT '0',
  `menu_type` varchar(30) NOT NULL DEFAULT '0',
  `list_type` varchar(255) NOT NULL DEFAULT '0',
  `table_border` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_cellspacing` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_cellpadding` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_bgColor` int(11) unsigned NOT NULL DEFAULT '0',
  `select_key` varchar(80) NOT NULL DEFAULT '',
  `sectionIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `linkToTop` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `file_collections` text,
  `filelink_size` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` tinytext NOT NULL,
  `target` varchar(30) NOT NULL DEFAULT '',
  `section_frame` int(11) unsigned NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `multimedia` tinytext,
  `image_frames` int(11) unsigned NOT NULL DEFAULT '0',
  `recursive` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `imageheight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rte_enabled` tinyint(4) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `pi_flexform` mediumtext,
  `accessibility_title` varchar(30) NOT NULL DEFAULT '',
  `accessibility_bypass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) NOT NULL DEFAULT '',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `tx_fed_fcefile` varchar(255) NOT NULL DEFAULT '',
  `tx_flux_column` varchar(255) DEFAULT NULL,
  `tx_flux_parent` int(11) DEFAULT NULL,
  `tx_flux_children` int(11) DEFAULT NULL,
  `selected_categories` text,
  `category_field` varchar(64) NOT NULL DEFAULT '',
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `index_fluxcolumn` (`tx_flux_column`(12)),
  KEY `index_fluxparentcolumn` (`tx_flux_column`(12),`tx_flux_parent`),
  KEY `index_fluxparent` (`tx_flux_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,1,0,0,0,'',0,0,0,0,0,0,1413326163,1367620028,1,0,1000000000,'text','','','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.',NULL,0,0,NULL,1,0,NULL,0,1,0,NULL,NULL,0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,NULL,0,'','',0,0,NULL,0,0,0,0,0,0,NULL,'',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}','','',0,NULL,NULL,'',0),(2,1,0,0,0,'',0,0,0,0,0,0,1367620301,1367620153,1,0,1000000000,'fed_fce','','','','',0,0,'',1,0,'',0,1,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"options\">\n            <language index=\"lDEF\">\n                <field index=\"basic\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"columns\">\n                    <el index=\"el\">\n                        <section index=\"1\">\n                            <itemType index=\"column\">\n                                <el>\n                                    <field index=\"class\">\n                                        <value index=\"vDEF\">span6</value>\n                                    </field>\n                                    <field index=\"addWell\">\n                                        <value index=\"vDEF\">0</value>\n                                    </field>\n                                    <field index=\"additionalClass\">\n                                        <value index=\"vDEF\"></value>\n                                    </field>\n                                </el>\n                            </itemType>\n                            <itemType index=\"_TOGGLE\">0</itemType>\n                        </section>\n                        <section index=\"2\">\n                            <itemType index=\"column\">\n                                <el>\n                                    <field index=\"class\">\n                                        <value index=\"vDEF\">span6</value>\n                                    </field>\n                                    <field index=\"addWell\">\n                                        <value index=\"vDEF\">0</value>\n                                    </field>\n                                    <field index=\"additionalClass\">\n                                        <value index=\"vDEF\"></value>\n                                    </field>\n                                </el>\n                            </itemType>\n                            <itemType index=\"_TOGGLE\">0</itemType>\n                        </section>\n                    </el>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_fed_fcefile\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:14:\"tx_flux_parent\";N;s:14:\"tx_flux_column\";N;}','fluidcontent_twitterbootstrap:FluidRow.html','',0,0,NULL,'',0),(3,1,0,0,0,'',0,0,0,0,0,0,1368572694,1367620362,1,0,1000000000,'fed_fce','','','','',0,0,'',1,0,'',0,1,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"options\">\n            <language index=\"lDEF\">\n                <field index=\"header\">\n                    <value index=\"vDEF\">Hello</value>\n                </field>\n                <field index=\"closeLinkText\">\n                    <value index=\"vDEF\">World</value>\n                </field>\n                <field index=\"class\">\n                    <value index=\"vDEF\">success</value>\n                </field>\n                <field index=\"isBlock\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_fed_fcefile\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:14:\"tx_flux_parent\";N;s:14:\"tx_flux_column\";N;}','fluidcontent_twitterbootstrap:Alert.html','',0,0,NULL,'',0),(4,6,0,0,0,'',0,0,0,0,0,0,1368744646,1368567511,1,0,1000000000,'fluidcontent_content','','',NULL,NULL,0,0,NULL,1,0,NULL,0,1,0,NULL,NULL,0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,NULL,0,'','',0,0,NULL,0,0,0,0,0,0,NULL,'',0,'',0,'a:19:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_fed_fcefile\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;}','main:50-50.html','',0,NULL,NULL,'',0),(5,6,0,0,0,'',0,0,0,0,0,0,1413326118,1368567581,1,0,1000000000,'text','Left','','<span style=\"color: rgb(85, 85, 85); font-family: Arial; font-size: 13px; line-height: 20px; background-color: rgb(252, 252, 252); \">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est eleifend enim a feugiat.</span>','',0,0,'',1,0,'',0,1,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,0,'','',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}','','column1',13,0,NULL,'',0),(6,6,0,0,0,'',0,0,0,0,0,0,1413326118,1368572885,1,0,1000000000,'text','','','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est eleifend enim a feugiat.',NULL,0,0,NULL,1,0,NULL,0,1,0,NULL,NULL,0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,NULL,0,'','',0,0,NULL,0,0,0,0,0,0,NULL,'',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}','','',0,NULL,NULL,'',0),(7,6,0,0,0,'',0,0,0,0,0,0,1368744914,1368573184,1,0,1000000000,'fluidcontent_content','','',NULL,NULL,0,0,NULL,1,0,NULL,0,1,0,NULL,NULL,0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,NULL,0,'','',0,0,NULL,0,0,0,0,0,0,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"tx_fed_fcefile\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:14:\"tx_flux_parent\";N;s:14:\"tx_flux_column\";N;}','fluidcontent_twitterbootstrap:Well.html','',0,NULL,NULL,'',0),(8,6,0,0,0,'',0,0,0,0,0,0,1368744771,1368573914,1,0,1000000000,'text','','','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est eleifend enim a feugiat.',NULL,0,0,NULL,1,0,NULL,0,1,0,NULL,NULL,0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,NULL,0,'','',0,0,NULL,0,0,0,0,0,0,NULL,'',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}','','content',7,NULL,NULL,'',0),(9,7,0,0,0,'',0,0,0,0,0,0,1368574447,1368574447,1,0,256,'text','','','<h1 style=\"margin: 5px 0px 10px; font-family: \'Open Sans\', sans-serif; line-height: 40px; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 38.5px; text-shadow: rgb(246, 246, 246) 0px 0px 1px; border-top-left-radius: 0px !important; border-top-right-radius: 0px !important; border-bottom-right-radius: 0px !important; border-bottom-left-radius: 0px !important; font-weight: normal !important; \">h1. Heading 1</h1>\r\n<h2 style=\"margin: 5px 0px 10px; font-family: \'Open Sans\', sans-serif; line-height: 40px; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 31.5px; text-shadow: rgb(246, 246, 246) 0px 0px 1px; border-top-left-radius: 0px !important; border-top-right-radius: 0px !important; border-bottom-right-radius: 0px !important; border-bottom-left-radius: 0px !important; font-weight: normal !important; \">h2. Heading 2</h2>\r\n<h3 style=\"margin: 5px 0px 10px; font-family: \'Open Sans\', sans-serif; line-height: 40px; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 24.5px; text-shadow: rgb(246, 246, 246) 0px 0px 1px; border-top-left-radius: 0px !important; border-top-right-radius: 0px !important; border-bottom-right-radius: 0px !important; border-bottom-left-radius: 0px !important; font-weight: normal !important; \">h3. Heading 3</h3>\r\n<h4 style=\"margin: 5px 0px 10px; font-family: \'Open Sans\', sans-serif; line-height: 20px; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 17.5px; text-shadow: rgb(246, 246, 246) 0px 0px 1px; border-top-left-radius: 0px !important; border-top-right-radius: 0px !important; border-bottom-right-radius: 0px !important; border-bottom-left-radius: 0px !important; font-weight: normal !important; \">h4. Heading 4</h4>\r\n<h5 style=\"margin: 5px 0px 10px; font-family: \'Open Sans\', sans-serif; line-height: 20px; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 14px; text-shadow: rgb(246, 246, 246) 0px 0px 1px; border-top-left-radius: 0px !important; border-top-right-radius: 0px !important; border-bottom-right-radius: 0px !important; border-bottom-left-radius: 0px !important; font-weight: normal !important; \">h5. Heading 5</h5>\r\n<h6 style=\"margin: 10px 0px; font-family: Arial; line-height: 20px; color: rgb(51, 51, 51); text-rendering: optimizelegibility; font-size: 11.9px; border-top-left-radius: 0px !important; border-top-right-radius: 0px !important; border-bottom-right-radius: 0px !important; border-bottom-left-radius: 0px !important; \">h6. Heading 6</h6>',NULL,0,0,NULL,1,0,NULL,0,0,0,NULL,NULL,0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,NULL,0,'','',0,0,NULL,0,0,0,0,0,0,NULL,'',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}','','',0,NULL,NULL,'',0),(10,7,0,0,0,'',0,0,0,0,0,0,1368574620,1368574524,1,0,512,'text','','','<b>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque.</b>\r\nItaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut repellat.\r\n<i>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et.</i>',NULL,0,0,NULL,1,0,NULL,0,0,0,NULL,NULL,0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,NULL,0,'','',0,0,NULL,0,0,0,0,0,0,NULL,'',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}','','',0,NULL,NULL,'',0),(11,7,0,0,0,'',0,0,0,0,0,0,1368574708,1368574627,1,0,768,'text','','','<ul><li>Lorem ipsum dolor sit amet</li><li>Consectetur adipiscing elit</li><li>Integer molestie lorem at massa</li><li>Facilisis in pretium nisl aliquet</li><li>Nulla volutpat aliquam velit<ul><li>Phasellus iaculis neque</li><li>Purus sodales ultricies</li><li>Vestibulum laoreet porttitor sem</li><li>Ac tristique libero volutpat at</li></ul></li><li>Faucibus porta lacus fringilla vel</li><li>Aenean sit amet erat nunc</li><li>Eget porttitor lorem</li></ul>',NULL,0,0,NULL,1,0,NULL,0,0,0,NULL,NULL,0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,NULL,0,'','',0,0,NULL,0,0,0,0,0,0,NULL,'',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}','','',0,NULL,NULL,'',0),(12,7,0,0,0,'',0,0,0,0,0,0,1368574730,1368574730,1,0,1024,'text','','','<ol><li>Lorem ipsum dolor sit amet</li><li>Consectetur adipiscing elit</li><li>Integer molestie lorem at massa</li><li>Facilisis in pretium nisl aliquet</li><li>Nulla volutpat aliquam velit<ol><li>Phasellus iaculis neque</li><li>Purus sodales ultricies</li><li>Vestibulum laoreet porttitor sem</li><li>Ac tristique libero volutpat at</li></ol></li><li>Faucibus porta lacus fringilla vel</li><li>Aenean sit amet erat nunc</li><li>Eget porttitor lorem</li></ol>',NULL,0,0,NULL,1,0,NULL,0,0,0,NULL,NULL,0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,NULL,0,'','',0,0,NULL,0,0,0,0,0,0,NULL,'',0,'',0,'a:24:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;s:14:\"tx_flux_parent\";N;s:14:\"tx_flux_column\";N;}','','',0,NULL,NULL,'',0),(13,6,0,0,0,'',0,0,0,0,0,0,1413326118,1368575721,1,0,1000000000,'gridelements_pi1','2 Columns','',NULL,NULL,0,0,NULL,1,0,NULL,0,1,0,NULL,NULL,0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,NULL,0,'','',0,0,NULL,0,0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"options\">\n            <language index=\"lDEF\">\n                <field index=\"basic\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"columns\">\n                    <el index=\"el\">\n                        <section index=\"1\">\n                            <itemType index=\"column\">\n                                <el>\n                                    <field index=\"class\">\n                                        <value index=\"vDEF\">span6</value>\n                                    </field>\n                                    <field index=\"addWell\">\n                                        <value index=\"vDEF\">0</value>\n                                    </field>\n                                    <field index=\"additionalClass\">\n                                        <value index=\"vDEF\"></value>\n                                    </field>\n                                </el>\n                            </itemType>\n                            <itemType index=\"_TOGGLE\">0</itemType>\n                        </section>\n                        <section index=\"2\">\n                            <itemType index=\"column\">\n                                <el>\n                                    <field index=\"class\">\n                                        <value index=\"vDEF\">span6</value>\n                                    </field>\n                                    <field index=\"addWell\">\n                                        <value index=\"vDEF\">0</value>\n                                    </field>\n                                    <field index=\"additionalClass\">\n                                        <value index=\"vDEF\"></value>\n                                    </field>\n                                </el>\n                            </itemType>\n                            <itemType index=\"_TOGGLE\">0</itemType>\n                        </section>\n                    </el>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:30:\"tx_gridelements_backend_layout\";N;s:24:\"tx_gridelements_children\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}','fluidcontent_twitterbootstrap:FluidRow.html','',0,NULL,NULL,'',0),(14,6,0,0,0,'',0,0,0,0,0,0,1413326118,1368744669,1,0,1000000000,'text','Half','','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est eleifend enim a feugiat.',NULL,0,0,NULL,1,0,NULL,0,1,0,NULL,NULL,0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,NULL,0,'','',0,0,NULL,0,0,0,0,0,0,NULL,'',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}','','',0,NULL,NULL,'',0),(15,6,0,0,0,'',0,0,0,0,0,0,1413326118,1368744682,1,0,1000000000,'text','Half','','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est eleifend enim a feugiat.',NULL,0,0,NULL,1,0,NULL,0,1,0,NULL,NULL,0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,NULL,0,'','',0,0,NULL,0,0,0,0,0,0,NULL,'',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}','','',0,NULL,NULL,'',0),(16,6,0,0,0,'',0,0,0,0,0,0,1413326118,1368744742,1,0,1000000000,'gridelements_pi1','3 Columns','',NULL,NULL,0,0,NULL,1,0,NULL,0,1,0,NULL,NULL,0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,NULL,0,'','',0,0,NULL,0,0,0,0,0,0,NULL,'',0,'',0,'a:24:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:30:\"tx_gridelements_backend_layout\";N;s:24:\"tx_gridelements_children\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;s:14:\"tx_flux_parent\";N;s:14:\"tx_flux_column\";N;}','','',0,NULL,NULL,'',0),(17,6,0,0,0,'',0,0,0,0,0,0,1413326118,1368744797,1,0,1000000000,'text','Third','','<div>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est eleifend enim a feugiat.</div>',NULL,0,0,NULL,1,0,NULL,0,1,0,NULL,NULL,0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,NULL,0,'','',0,0,NULL,0,0,0,0,0,0,NULL,'',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}','','',0,NULL,NULL,'',0),(18,6,0,0,0,'',0,0,0,0,0,0,1413326118,1368744810,1,0,1000000000,'text','Third','','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est eleifend enim a feugiat.',NULL,0,0,NULL,1,0,NULL,0,1,0,NULL,NULL,0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,NULL,0,'','',0,0,NULL,0,0,0,0,0,0,NULL,'',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}','','',0,NULL,NULL,'',0),(19,6,0,0,0,'',0,0,0,0,0,0,1413326118,1368744824,1,0,1000000000,'text','Third','','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est eleifend enim a feugiat.',NULL,0,0,NULL,1,0,NULL,0,1,0,NULL,NULL,0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,NULL,0,'','',0,0,NULL,0,0,0,0,0,0,NULL,'',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}','','',0,NULL,NULL,'',0),(20,3,0,0,0,'',0,0,0,0,0,0,1377627606,1377625660,1,0,1000000000,'text','','','<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>',NULL,0,0,NULL,2,0,NULL,0,1,0,NULL,NULL,0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,NULL,0,'','',0,0,NULL,0,0,0,0,0,0,NULL,'',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}','','',0,NULL,NULL,'',0),(21,3,0,0,0,'',0,0,0,0,0,20,1377627606,1377627347,1,0,1000000000,'text','','','<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>','0',0,0,'',2,0,'0',0,1,0,'','',0,0,3,'',0,0,'','','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,0,'','',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}','','',NULL,0,NULL,'',0),(22,6,0,0,0,'',0,0,0,0,0,0,1377627724,1377627713,1,0,1000000000,'fluidcontent_content','','',NULL,NULL,0,0,NULL,2,0,NULL,0,1,0,NULL,'',0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,NULL,0,'','',0,0,NULL,0,0,0,0,0,0,NULL,'',0,'',0,'a:24:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"list_type\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"select_key\";N;s:5:\"pages\";N;s:9:\"recursive\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}','','',0,NULL,NULL,'',0),(23,17,0,0,0,'',0,0,0,0,0,0,1384444452,1384443194,1,0,1000000000,'text','asdafa','','sdasdasdasd',NULL,0,0,NULL,2,0,NULL,0,1,0,NULL,NULL,0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,NULL,0,'','',0,0,NULL,0,0,0,0,0,0,NULL,'',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}','','',0,NULL,NULL,'',0),(24,20,0,0,0,'',0,0,0,0,0,0,1414592608,1414592375,1,0,1000000000,'textpic','','','',NULL,0,0,NULL,2,0,NULL,0,1,0,NULL,NULL,0,0,1,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,NULL,0,'','',0,0,NULL,0,0,0,0,0,0,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;s:16:\"tx_flux_children\";N;}','','',0,0,NULL,'',0);
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_key` varchar(60) NOT NULL DEFAULT '',
  `repository` int(11) unsigned NOT NULL DEFAULT '1',
  `version` varchar(10) NOT NULL DEFAULT '',
  `alldownloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `downloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `description` mediumtext,
  `state` int(4) NOT NULL DEFAULT '0',
  `review_state` int(4) NOT NULL DEFAULT '0',
  `category` int(4) NOT NULL DEFAULT '0',
  `last_updated` int(11) unsigned NOT NULL DEFAULT '0',
  `serialized_dependencies` mediumtext,
  `author_name` varchar(100) NOT NULL DEFAULT '',
  `author_email` varchar(100) NOT NULL DEFAULT '',
  `ownerusername` varchar(50) NOT NULL DEFAULT '',
  `md5hash` varchar(35) NOT NULL DEFAULT '',
  `update_comment` mediumtext,
  `authorcompany` varchar(100) NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT '0',
  `current_version` int(3) NOT NULL DEFAULT '0',
  `lastreviewedversion` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`extension_key`,`repository`),
  KEY `index_versionrepo` (`integer_version`,`repository`),
  KEY `index_currentversions` (`current_version`,`review_state`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_repository`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_repository` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `description` mediumtext,
  `wsdl_url` varchar(100) NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) NOT NULL DEFAULT '',
  `last_update` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_repository`
--

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;
INSERT INTO `tx_extensionmanager_domain_model_repository` VALUES (1,0,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','http://typo3.org/wsdl/tx_ter_wsdl.php','http://repositories.typo3.org/mirrors.xml.gz',1414591033,6506);
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_uid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `public` tinyint(3) NOT NULL DEFAULT '0',
  `item_uid` int(11) NOT NULL DEFAULT '0',
  `preset_data` blob,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_chashcache`
--

DROP TABLE IF EXISTS `tx_realurl_chashcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_chashcache` (
  `spurl_hash` char(32) NOT NULL DEFAULT '',
  `chash_string` varchar(32) NOT NULL DEFAULT '',
  `spurl_string` text,
  PRIMARY KEY (`spurl_hash`),
  KEY `chash_string` (`chash_string`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_chashcache`
--

LOCK TABLES `tx_realurl_chashcache` WRITE;
/*!40000 ALTER TABLE `tx_realurl_chashcache` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_chashcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_errorlog`
--

DROP TABLE IF EXISTS `tx_realurl_errorlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_errorlog` (
  `url_hash` int(11) NOT NULL DEFAULT '0',
  `url` text NOT NULL,
  `error` text NOT NULL,
  `last_referer` text NOT NULL,
  `counter` int(11) NOT NULL DEFAULT '0',
  `cr_date` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `rootpage_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`url_hash`,`rootpage_id`),
  KEY `counter` (`counter`,`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_errorlog`
--

LOCK TABLES `tx_realurl_errorlog` WRITE;
/*!40000 ALTER TABLE `tx_realurl_errorlog` DISABLE KEYS */;
INSERT INTO `tx_realurl_errorlog` VALUES (26537613,'inc/js/a3plus.tools.js','File \"a3plus.tools.js\" was not found (2)!','http://localhost/Mueller/index.php?id=1',3,1413398952,1413398981,20),(46956955,'art/header-4.jpg','File \"header-4.jpg\" was not found (2)!','http://localhost/Mueller/index.php?id=1',3,1413398952,1413398982,20),(48278491,'art/header-openhouse.jpg','File \"header-openhouse.jpg\" was not found (2)!','http://localhost/Mueller/index.php?id=1',3,1413398952,1413398982,20),(60743817,'i/','Segment \"i\" was not a keyword for a postVarSet as expected on page with id=1.','',1,1413326170,1413326170,1),(79639046,'art/content-img-big-1-thumb.jpg','File \"content-img-big-1-thumb.jpg\" was not found (2)!','http://localhost/Mueller/index.php?id=1',3,1413398952,1413398982,20),(104541921,'art/header-2.jpg','File \"header-2.jpg\" was not found (2)!','http://localhost/Mueller/index.php?id=1',3,1413398952,1413398982,20),(116910379,'inc/js/a3plus.extend.js','File \"a3plus.extend.js\" was not found (2)!','http://localhost/Mueller/index.php?id=1',3,1413398952,1413398982,20),(121185113,'art/img-span-1.jpg','File \"img-span-1.jpg\" was not found (2)!','http://localhost/Mueller/index.php?id=1',3,1413398952,1413398982,20),(125749600,'typography/','Segment \"typography\" was not a keyword for a postVarSet as expected on page with id=1.','http://localhost/TYPO3-Site/',1,1413396574,1413396574,1),(125749600,'typography/','Segment \"typography\" was not a keyword for a postVarSet as expected on page with id=20.','http://localhost/TYPO3-Site/',1,1413396700,1413396700,20),(133425002,'inc/js/jquery.flexslider-min.js','File \"jquery.flexslider-min.js\" was not found (2)!','http://localhost/Mueller/index.php?id=1',3,1413398952,1413398981,20),(162885939,'art/header-3.jpg','File \"header-3.jpg\" was not found (2)!','http://localhost/Mueller/index.php?id=1',3,1413398952,1413398982,20),(190864396,'art-global/logo-mueller.png','File \"logo-mueller.png\" was not found (2)!','http://localhost/Mueller/index.php?id=1',3,1413398952,1413398982,20),(209490951,'inc/js/jquery-1.8.3.min.js','File \"jquery-1.8.3.min.js\" was not found (2)!','http://localhost/Mueller/index.php?id=1',3,1413398952,1413398981,20),(221548397,'inc/js/fastclick.js','File \"fastclick.js\" was not found (2)!','http://localhost/Mueller/index.php?id=1',3,1413398952,1413398981,20),(231711673,'inc/js/jquery.mmenu.min.all.js','File \"jquery.mmenu.min.all.js\" was not found (2)!','http://localhost/Mueller/index.php?id=1',3,1413398952,1413398981,20),(259314197,'inc/js/jquery.easing.min.js','File \"jquery.easing.min.js\" was not found (2)!','http://localhost/Mueller/index.php?id=1',3,1413398952,1413398981,20);
/*!40000 ALTER TABLE `tx_realurl_errorlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_pathcache`
--

DROP TABLE IF EXISTS `tx_realurl_pathcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_pathcache` (
  `cache_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `rootpage_id` int(11) NOT NULL DEFAULT '0',
  `mpvar` tinytext NOT NULL,
  `pagepath` text NOT NULL,
  `expire` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cache_id`),
  KEY `pathq1` (`rootpage_id`,`pagepath`(32),`expire`),
  KEY `pathq2` (`page_id`,`language_id`,`rootpage_id`,`expire`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_pathcache`
--

LOCK TABLES `tx_realurl_pathcache` WRITE;
/*!40000 ALTER TABLE `tx_realurl_pathcache` DISABLE KEYS */;
INSERT INTO `tx_realurl_pathcache` VALUES (5,7,0,1,'','features/typography',1418425200),(6,22,0,20,'','styleguide',0),(7,7,0,20,'','styleguide/typography',0);
/*!40000 ALTER TABLE `tx_realurl_pathcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_redirects`
--

DROP TABLE IF EXISTS `tx_realurl_redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_redirects` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `url_hash` int(11) NOT NULL DEFAULT '0',
  `url` text NOT NULL,
  `destination` text NOT NULL,
  `last_referer` text NOT NULL,
  `counter` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `has_moved` int(11) NOT NULL DEFAULT '0',
  `domain_limit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `sel01` (`url_hash`,`domain_limit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_redirects`
--

LOCK TABLES `tx_realurl_redirects` WRITE;
/*!40000 ALTER TABLE `tx_realurl_redirects` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_uniqalias`
--

DROP TABLE IF EXISTS `tx_realurl_uniqalias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_uniqalias` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `field_alias` varchar(255) NOT NULL DEFAULT '',
  `field_id` varchar(60) NOT NULL DEFAULT '',
  `value_alias` varchar(255) NOT NULL DEFAULT '',
  `value_id` int(11) NOT NULL DEFAULT '0',
  `lang` int(11) NOT NULL DEFAULT '0',
  `expire` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `tablename` (`tablename`),
  KEY `bk_realurl01` (`field_alias`(20),`field_id`,`value_id`,`lang`,`expire`),
  KEY `bk_realurl02` (`tablename`(32),`field_alias`(20),`field_id`,`value_alias`(20),`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_uniqalias`
--

LOCK TABLES `tx_realurl_uniqalias` WRITE;
/*!40000 ALTER TABLE `tx_realurl_uniqalias` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_uniqalias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_urldecodecache`
--

DROP TABLE IF EXISTS `tx_realurl_urldecodecache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_urldecodecache` (
  `url_hash` char(32) NOT NULL DEFAULT '',
  `spurl` tinytext NOT NULL,
  `content` blob NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `rootpage_id` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`url_hash`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_urldecodecache`
--

LOCK TABLES `tx_realurl_urldecodecache` WRITE;
/*!40000 ALTER TABLE `tx_realurl_urldecodecache` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_urldecodecache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_urlencodecache`
--

DROP TABLE IF EXISTS `tx_realurl_urlencodecache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_urlencodecache` (
  `url_hash` char(32) NOT NULL DEFAULT '',
  `origparams` tinytext NOT NULL,
  `internalExtras` tinytext NOT NULL,
  `content` text NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`url_hash`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_urlencodecache`
--

LOCK TABLES `tx_realurl_urlencodecache` WRITE;
/*!40000 ALTER TABLE `tx_realurl_urlencodecache` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_urlencodecache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rsaauth_keys`
--

DROP TABLE IF EXISTS `tx_rsaauth_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rsaauth_keys` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `key_value` text,
  PRIMARY KEY (`uid`),
  KEY `crdate` (`crdate`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rsaauth_keys`
--

LOCK TABLES `tx_rsaauth_keys` WRITE;
/*!40000 ALTER TABLE `tx_rsaauth_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rsaauth_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rtehtmlarea_acronym`
--

DROP TABLE IF EXISTS `tx_rtehtmlarea_acronym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rtehtmlarea_acronym` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `term` varchar(255) NOT NULL DEFAULT '',
  `acronym` varchar(255) NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rtehtmlarea_acronym`
--

LOCK TABLES `tx_rtehtmlarea_acronym` WRITE;
/*!40000 ALTER TABLE `tx_rtehtmlarea_acronym` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rtehtmlarea_acronym` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-29 15:55:28
