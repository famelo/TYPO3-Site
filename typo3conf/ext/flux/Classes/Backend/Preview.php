<?php
namespace FluidTYPO3\Flux\Backend;
/***************************************************************
 *  Copyright notice
 *
 *  (c) 2014 Claus Due <claus@namelesscoder.net>
 *
 *  All rights reserved
 *
 *  This script is part of the TYPO3 project. The TYPO3 project is
 *  free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  The GNU General Public License can be found at
 *  http://www.gnu.org/copyleft/gpl.html.
 *
 *  This script is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  This copyright notice MUST APPEAR in all copies of the script!
 ***************************************************************/

use FluidTYPO3\Flux\Provider\ProviderInterface;
use FluidTYPO3\Flux\Service\FluxService;
use FluidTYPO3\Flux\Service\RecordService;
use TYPO3\CMS\Backend\View\PageLayoutView;
use TYPO3\CMS\Backend\View\PageLayoutViewDrawItemHookInterface;
use TYPO3\CMS\Core\Utility\ExtensionManagementUtility;
use TYPO3\CMS\Core\Utility\GeneralUtility;
use TYPO3\CMS\Extbase\Object\ObjectManagerInterface;
use TYPO3\CMS\Extbase\Utility\LocalizationUtility;

/**
 * Fluid Template preview renderer
 *
 * @package Flux
 * @subpackage Backend
 */
class Preview implements PageLayoutViewDrawItemHookInterface {

	/**
	 * @var boolean
	 */
	protected static $assetsIncluded = FALSE;

	/**
	 * @var ObjectManagerInterface
	 */
	protected $objectManager;

	/**
	 * @var FluxService
	 */
	protected $configurationService;

	/**
	 * @var RecordService
	 */
	protected $recordService;

	/**
	 * CONSTRUCTOR
	 */
	public function __construct() {
		$this->objectManager = GeneralUtility::makeInstance('TYPO3\CMS\Extbase\Object\ObjectManager');
		$this->configurationService = $this->objectManager->get('FluidTYPO3\Flux\Service\FluxService');
		$this->recordService = $this->objectManager->get('FluidTYPO3\Flux\Service\RecordService');
	}

	/**
	 *
	 * @param PageLayoutView $parentObject
	 * @param boolean $drawItem
	 * @param string $headerContent
	 * @param string $itemContent
	 * @param array $row
	 * @return void
	 */
	public function preProcess(PageLayoutView &$parentObject, &$drawItem, &$headerContent, &$itemContent, array &$row) {
		$this->renderPreview($headerContent, $itemContent, $row, $drawItem);
		unset($parentObject);
	}

	/**
	 * @param string $headerContent
	 * @param string $itemContent
	 * @param array $row
	 * @param boolean $drawItem
	 * @return NULL
	 */
	public function renderPreview(&$headerContent, &$itemContent, array &$row, &$drawItem) {
		$drawItem = TRUE;
		$fieldName = NULL; // every provider for tt_content will be asked to get a preview
		if ('shortcut' === $row['CType'] && FALSE === strpos($row['records'], ',')) {
			$itemContent = $this->createShortcutIcon($row) . $itemContent;
		} else {
			$itemContent = '<a name="c' . $row['uid'] . '"></a>' . $itemContent;
		}
		$providers = $this->configurationService->resolveConfigurationProviders('tt_content', $fieldName, $row);
		foreach ($providers as $provider) {
			/** @var ProviderInterface $provider */
			list ($previewHeader, $previewContent, $continueDrawing) = $provider->getPreview($row);
			if (FALSE === empty($previewHeader)) {
				$headerContent = $previewHeader . (FALSE === empty($headerContent) ? ': ' . $headerContent : '');
				$drawItem = FALSE;
			}
			if (FALSE === empty($previewContent)) {
				$itemContent .= $previewContent;
				$drawItem = FALSE;
			}
			if (FALSE === $continueDrawing) {
				break;
			}
		}
		$this->attachAssets();
		return NULL;
	}

	/**
	 * @param array $row
	 * @return string
	 */
	protected function createShortcutIcon($row) {
		$targetRecord = $this->getPageTitleAndPidFromContentUid(intval($row['records']));
		$title = LocalizationUtility::translate('reference', 'Flux', array(
			$targetRecord['title']
		));
		$targetLink = '?id=' . $targetRecord['pid'] . '#c' . $row['records'];
		$iconClass = 't3-icon t3-icon-actions-insert t3-icon-insert-reference t3-icon-actions t3-icon-actions-insert-reference';
		$icon = '<a name="c' . $row['uid'] . '" title="' . $title . '" href="' . $targetLink . '"><span class="' . $iconClass . '"></span></a>';
		return $icon;
	}

	/**
	 * @param integer $contentUid
	 * @return array
	 */
	protected function getPageTitleAndPidFromContentUid($contentUid) {
		return reset($this->recordService->get('tt_content t, pages p', 'p.title, t.pid', "t.uid = '" . $contentUid . "' AND p.uid = t.pid"));
	}

	/**
	 * @return void
	 */
	protected function attachAssets() {
		if (FALSE === self::$assetsIncluded) {
			$doc = GeneralUtility::makeInstance('TYPO3\\CMS\\Backend\\Template\\DocumentTemplate');
			$doc->backPath = $GLOBALS['BACK_PATH'];

			$doc->getPageRenderer()->addCssFile($doc->backPath . ExtensionManagementUtility::extRelPath('flux') . 'Resources/Public/css/grid.css');
			$doc->getPageRenderer()->addJsFile($doc->backPath . ExtensionManagementUtility::extRelPath('flux') . 'Resources/Public/js/fluxCollapse.js');
			self::$assetsIncluded = TRUE;
		}
	}

}
