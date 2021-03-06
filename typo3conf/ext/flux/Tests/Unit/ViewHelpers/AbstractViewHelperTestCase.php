<?php
namespace FluidTYPO3\Flux\Tests\Unit\ViewHelpers;
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
 *  the Free Software Foundation; either version 2 of the License, or
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
 * ************************************************************* */

use FluidTYPO3\Flux\Tests\Fixtures\Data\Records;
use FluidTYPO3\Flux\Tests\Unit\AbstractTestCase;
use TYPO3\CMS\Extbase\Configuration\ConfigurationManagerInterface;
use TYPO3\CMS\Extbase\Mvc\Controller\ControllerContext;
use TYPO3\CMS\Extbase\Mvc\Web\Request;
use TYPO3\CMS\Extbase\Mvc\Web\Response;
use TYPO3\CMS\Extbase\Mvc\Web\Routing\UriBuilder;
use TYPO3\CMS\Extbase\Reflection\ObjectAccess;
use TYPO3\CMS\Fluid\Core\Parser\SyntaxTree\NodeInterface;
use TYPO3\CMS\Fluid\Core\Parser\SyntaxTree\ViewHelperNode;
use TYPO3\CMS\Fluid\Core\Rendering\RenderingContext;
use TYPO3\CMS\Fluid\Core\ViewHelper\AbstractViewHelper;
use TYPO3\CMS\Fluid\Core\ViewHelper\Facets\ChildNodeAccessInterface;
use TYPO3\CMS\Fluid\Core\ViewHelper\TemplateVariableContainer;
use TYPO3\CMS\Fluid\Core\ViewHelper\ViewHelperVariableContainer;
use TYPO3\CMS\Fluid\Core\Widget\AbstractWidgetViewHelper;
use TYPO3\CMS\Fluid\Core\Widget\WidgetContext;
use TYPO3\CMS\Frontend\ContentObject\ContentObjectRenderer;

/**
 * @package Flux
 */
abstract class AbstractViewHelperTestCase extends AbstractTestCase {

	/**
	 * @var array
	 */
	protected $defaultArguments = array(
		'name' => 'test'
	);

	/**
	 * @test
	 */
	public function canCreateViewHelperInstance() {
		$instance = $this->createInstance();
		$this->assertInstanceOf($this->getViewHelperClassName(), $instance);
	}

	/**
	 * @test
	 */
	public function canPrepareArguments() {
		$instance = $this->createInstance();
		$arguments = $instance->prepareArguments();
		$this->assertThat($arguments, new \PHPUnit_Framework_Constraint_IsType(\PHPUnit_Framework_Constraint_IsType::TYPE_ARRAY));
	}

	/**
	 * @return string
	 */
	protected function getViewHelperClassName() {
		$class = get_class($this);
		return substr($class, 0, -4);
	}

	/**
	 * @param string $type
	 * @param mixed $value
	 * @return NodeInterface
	 */
	protected function createNode($type, $value) {
		if ('Boolean' === $type) {
			$value = $this->createNode('Text', strval($value));
		}
		/** @var NodeInterface $node */
		$className = 'TYPO3\CMS\Fluid\Core\Parser\SyntaxTree\\' . $type . 'Node';
		$node = new $className($value);
		return $node;
	}

	/**
	 * @return AbstractViewHelper
	 */
	protected function createInstance() {
		$className = $this->getViewHelperClassName();
		/** @var AbstractViewHelper $instance */
		$instance = $this->objectManager->get($className);
		if (TRUE === method_exists($instance, 'injectConfigurationManager')) {
			$cObject = new ContentObjectRenderer();
			$cObject->start(Records::$contentRecordWithoutParentAndWithoutChildren, 'tt_content');
			/** @var ConfigurationManagerInterface $configurationManager */
			$configurationManager = $this->objectManager->get('TYPO3\CMS\Extbase\Configuration\ConfigurationManagerInterface');
			$configurationManager->setContentObject($cObject);
			$instance->injectConfigurationManager($configurationManager);
		}
		$instance->initialize();
		return $instance;
	}

	/**
	 * @param array $arguments
	 * @param array $variables
	 * @param NodeInterface $childNode
	 * @param string $extensionName
	 * @param string $pluginName
	 * @return AbstractViewHelper
	 */
	protected function buildViewHelperInstance($arguments = array(), $variables = array(), $childNode = NULL, $extensionName = NULL, $pluginName = NULL) {
		$instance = $this->createInstance();
		/** @var TemplateVariableContainer $container */
		$container = $this->objectManager->get('TYPO3\CMS\Fluid\Core\ViewHelper\TemplateVariableContainer');
		/** @var ViewHelperVariableContainer $viewHelperContainer */
		$viewHelperContainer = $this->objectManager->get('TYPO3\CMS\Fluid\Core\ViewHelper\ViewHelperVariableContainer');
		if (0 < count($variables)) {
			ObjectAccess::setProperty($container, 'variables', $variables, TRUE);
		}
		$node = new ViewHelperNode($instance, $arguments);
		/** @var UriBuilder $uriBuilder */
		$uriBuilder = $this->objectManager->get('TYPO3\CMS\Extbase\Mvc\Web\Routing\UriBuilder');
		/** @var Request $request */
		$request = $this->objectManager->get('TYPO3\CMS\Extbase\Mvc\Web\Request');
		if (NULL !== $extensionName) {
			$request->setControllerExtensionName($extensionName);
		}
		if (NULL !== $pluginName) {
			$request->setPluginName($pluginName);
		}
		/** @var Response $response */
		$response = $this->objectManager->get('TYPO3\CMS\Extbase\Mvc\Web\Response');
		/** @var ControllerContext $controllerContext */
		$controllerContext = $this->objectManager->get('TYPO3\CMS\Extbase\Mvc\Controller\ControllerContext');
		$controllerContext->setRequest($request);
		$controllerContext->setResponse($response);
		$controllerContext->setUriBuilder($uriBuilder);
		/** @var RenderingContext $renderingContext */
		$renderingContext = $this->objectManager->get('TYPO3\CMS\Fluid\Core\Rendering\RenderingContext');
		$renderingContext->setControllerContext($controllerContext);
		ObjectAccess::setProperty($renderingContext, 'viewHelperVariableContainer', $viewHelperContainer, TRUE);
		ObjectAccess::setProperty($renderingContext, 'templateVariableContainer', $container, TRUE);
		$instance->setArguments($arguments);
		$instance->setRenderingContext($renderingContext);
		if (TRUE === $instance instanceof AbstractWidgetViewHelper) {
			/** @var WidgetContext $widgetContext */
			$widgetContext = $this->objectManager->get('TYPO3\CMS\Fluid\Core\Widget\WidgetContext');
			ObjectAccess::setProperty($instance, 'widgetContext', $widgetContext, TRUE);
		}
		if (NULL !== $childNode) {
			$node->addChildNode($childNode);
			if ($instance instanceof ChildNodeAccessInterface) {
				$instance->setChildNodes(array($childNode));
			}
		}
		$instance->setViewHelperNode($node);
		return $instance;
	}

	/**
	 * @param array $arguments
	 * @param array $variables
	 * @param NodeInterface $childNode
	 * @param string $extensionName
	 * @param string $pluginName
	 * @return mixed|AbstractViewHelper
	 */
	protected function executeViewHelper($arguments = array(), $variables = array(), $childNode = NULL, $extensionName = NULL, $pluginName = NULL) {
		$instance = $this->buildViewHelperInstance($arguments, $variables, $childNode, $extensionName, $pluginName);
		$output = $instance->initializeArgumentsAndRender();
		return $output;
	}

	/**
	 * @param string $nodeType
	 * @param mixed $nodeValue
	 * @param array $arguments
	 * @param array $variables
	 * @param string $extensionName
	 * @param string $pluginName
	 * @return mixed|AbstractViewHelper
	 */
	protected function executeViewHelperUsingTagContent($nodeType, $nodeValue, $arguments = array(), $variables = array(), $extensionName = NULL, $pluginName = NULL) {
		$childNode = $this->createNode($nodeType, $nodeValue);
		$instance = $this->buildViewHelperInstance($arguments, $variables, $childNode, $extensionName, $pluginName);
		$output = $instance->initializeArgumentsAndRender();
		return $output;
	}

}
