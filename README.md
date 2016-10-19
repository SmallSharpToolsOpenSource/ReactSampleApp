# React Sample App

Working with [React Native](https://facebook.github.io/react-native/) with Swift requires an expanding number of languages from simply working with a fully native iOS app which could use just Objective-C or Swift. With the JavaScript used in Reactive Native app in the JavaScriptCore context the syntax can be ES6 or even ES7 syntax with types using [Flow](https://github.com/facebook/flow). The code is then transpiled using [Babel](https://babeljs.io) to an earlier languages specification like ES5 so that the code can run in the JavaScriptCore context and possibly a web browser if some of the code is also used by a website.

Within iOS it is necessary to use Objective-C currently to make function bindings available to the JavaScriptCore context. Many modern apps are built with Swift and currently it is possible to select Swift 2.3 or 3.0 for app development.

All of these options require using many languages and their related compilers which can add complexity to the build system and complicate integrations. Tracking down a bug to a root cause can be especially difficult. This sample app shows how code written in Swift 3.0 syntax can be isolated to frameworks with public/private access controls to reduce the amount of code in the iOS app which is written in Objective-C while simplifying the build and testing iterations for the Swift frameworks. 

Isolating code to Swift frameworks allows for enforcing boundaries, a specific dependency graph as well as versioning to support more stable releases and flexible development schedule. It also allows the engineering team to be organized by their skill set as it aligns to the languages and tools needed to build the app.

## Dependency Graph

`App` -> `UIKit` -> `Kit` & `Core` -> `Foundation`

`Kit` -> `Core` -> `Foundation`

`Core` -> `Foundation`

The app users both the `Core` and `Kit` frameworks while `Kit` uses `Core` and `Core` does not use the others. Dependencies always go down and never back up. Both `Core` and `Kit` do not use `UIKit` as it is specific to iOS app development. These frameowrks will only use `Foundation` or other frameworks which allow for these frameworks to be used to build apps for iOS, macOS, watchOS and tvOS.

## ReactSampleCore

The `Core` framework simply provides the lowest level classes needed to store the hold into the state used by the app. These include model classes. These resources must be public classes which inherit from `NSObject` in order to make them available outside of the framework and available to Objective-C.

## ReactSampleKit

The `Kit` provides services which use the classes provided by the `Core` framework. This framework also does not use `UIKit` to ensure the framework can be used on multiple platforms.

## Bindings

Within the app the bindings classes use the `RCT_EXPORT_METHOD` macro to export methods to the JavaScriptCore context so that they can be used by JavaScript. These methods should use very little code and leverage what is made avaiable by the `Kit` framework where most of the behavior will be implemented.  

## Dependency Systems

On the JavaScript side modules are managed using [npm](https://www.npmjs.com) while often with Xcode projects [CocoaPods](https://cocoapods.org) is used. In addition to setting up and maintaining the dependency graph for the app there will be additional dependencies to manage. Manage dependencies effectively it itself a task which requires considerable time and effort. As new releases of the app are prepared dependencies may need to be upgraded or replaced.

One example is the Facebook SDK for iOS which currently is made up of 3 distinct modules for Core, Login and Sharing features. Before the it was a single module and it was necessary to upgrade to the new 3 module system which is not compatible with the legacy module. Removing and replacing that dependency takes time and a great deal of knowledge of the app and the SDK to migrate to the new modules.

Understanding and managing these dependency systems is critical to preparing a high quality app for release.

## Testability

It should be possible to test each framework independently to ensure it functions properly for the supported use cases. With testing and versioning it is then possible to manage framework releases which support specific features and address bug fixes and performance optimizations as needed. Version 1.1.3 may be a solid, heavily tested, stable release while 1.2.0-beta is still under development and only uses by the development and QA teams. Once it is ready it could be promoted to be included in the build of the app and prepared for release.

## Root Cause Analysis

When a bug does occur it will be possible to implement a test which reproduces the bug at the lowest possible level and perhaps fix it there with minimal effort. The goal will be to fully test frameworks and ensure the required use cases are supported. With disciplined QA analysis the level of quality will increase and act as a more reliable foundation for the React Native app.

By breaking down the app into distinct modules which have enforced boundaries and access controls a root cause analysis could pinpoint and resolve problems with much less effort. And once a problem is discovered a future regression can be prevented by putting tests in place. 

## Increased Focus & Productivity

With the bulk of the code written in JavaScript and run in the JavaScriptCore context and the Swift code isolated into frameworks the development cycles will be focused and much faster. Difficulties which arise with compilers, Xcode and the runtime will be minimized and teams with specific expertise for the necessary languages will be able to apply their knowledge to a limited scope of work.  

---
Brennan Stehling - Fall 2016
