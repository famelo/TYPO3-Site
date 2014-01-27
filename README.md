# Famelo Base Theme

This template is based on Fluid (http://t3n.de/magazin/neue-template-eingine-flow3-typo3-4x-fluid-templating-222468/) and a bundle of extensions to provide various ViewHelpers (https://fedext.net/viewhelpers/vhs/master.html)

## Login

```
Username ..: admin
Password ..: password
```

### Structure of the template (typo3conf/ext/template/)

```
Resources/Public              // Contains all css, js, images, fonts, etc
  - Media/*                   // Media files like images, etc
  - Components/*              // External Libraries and Components
  - Styles/Base.less          // General Styling mainly focused towards desktop
  - Styles/Mobile.less        // Special styling for mobile devices
  - Styles/Tablet.less        // Special styling for tablet devices
  - Styles/Main.less          // ties all the other styles together
  - Scripts/Main.js           // Place to put custom JS code

Configuration/TypoScript/Setup  // Contains all PHP code to modify WP behavior
  - Bootstrap.ts                // Page configuration and CSS/JS Header includes
  - Language.ts                 // Configuration for Language
  - Extensions.ts               // Place to put TypoScipt for different Extensions

Resources/Private               // Templates
  - Page                        // Page Templates based on fluidpages
  - Elements                    // Content Elements based on fluidcontent
  - Layouts                     // HTML that's the same on various page templates
  - Partials                    // Reusable Parts
  - Extensions/[ExtName]/...    // Place to put altered extension templates
```