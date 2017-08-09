# TQTStylesheets

[![licence mit](https://img.shields.io/badge/licence-MIT-blue.svg)](Insert MIT badge)

> TQTStylesheets is a stylesheet library written in Objective-C to create styles and easily use them in interface builder or programmatically

## Features

- Create reusable styles to views
- Apply those styles directly in your views using interface builder
- Apply or change styles inside your swift or Objective-C code

## Requirements

- iOS 9.0+
- Xcode 7+
- Objective-C or Swift

## Installation

### Cocoapods

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'

target 'TargetName' do
pod 'TQTStylesheets', '1.0.0'
end
```

## Usage

### Setup

1. Create a class called `TQTStylesheetImporter` with a static method `setupTQTStylesheet()` to import all your styles

TQTStylesheetImporter.swift
```swift
import TQTStylesheets

class TQTStylesheetImporter {
  static func setupTQTStylesheet() {
    let shared: TQTStylesheets = TQTStylesheets.sharedInstance()
  }
}
```

2. Call the above method in your `AppDelegate`

AppDelegate.swift:
```swift
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    TQTStylesheetImporter.setupTQTStylesheet()
  }
}
```

### Creating custom styles

To add your component:
1. Create a file .h and .m for your class. The file name has the following format (in eBNF - [Extended Backus Naur Form](http://en.wikipedia.org/wiki/Extended_Backus%E2%80%93Naur_Form)):

2. Declare a class method 'stylesheet' in you .h:

3. To add styles to your component,add to the dictionary in the `stylesheet` method:
 - your component attribute name as the key of the dictionary
 - a dictionary containing the properties and theirs values as the value of the dictionary.

 ex of a implementation of `stylesheet`:
```objective-c
    return @{
             @"YourComponentAttributeName": @{
                     @"propertyNameOfYourComponent": VALUE_OF_PROPERTY,
                     },
             };
```
4. Finally, import your just created stylesheet using TQTStylesheets. To do it, call the import method
Ex:
``` objective-c
TQTStylesheets *sharedInstance = [TQTStylesheets sharedInstance];
[sharedInstance import:[TQTBaseStylesheet stylesheet]];
```

### Applying styles using interface builder

### Applying styles in Swift code

#### BaseStylesheet

You can create BaseStylesheet which is a stylesheet that contains rules for the
basic UI classes, for instance, UILabel, UITextField etc.

#### Recommended structure



## Demo App

### About

### How to run

## Issues


## Contributing
Find on our [roadmap](https://github.com/afonsopacifer/open-source-boilerplate/issues/1) the next steps of the project ;)
<br>
Want to contribute? [Follow these recommendations](https://github.com/afonsopacifer/open-source-boilerplate/blob/master/CONTRIBUTING.md).

## Credits

This library has been created by [Hashi](Inser github profile), ... and ... and its currently being manteined by TQT

## Versioning

To keep better organization of releases we follow the [Semantic Versioning 2.0.0](http://semver.org/) guidelines.

## History
See [Releases](https://github.com/afonsopacifer/open-source-boilerplate/releases) for detailed changelog.

## License
[MIT License](https://github.com/afonsopacifer/open-source-boilerplate/blob/master/LICENSE.md) © [Afonso Pacifer](http://afonsopacifer.com/)
