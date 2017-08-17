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

1. Create a file with a class

ButtonStylesheet.swift
```swift
class ButtonStylesheet {
  static func stylesheet() -> Dictionary {
    return [
      "Primary_Button": [
        "highlightedTitleColor": UIColor.fromHex(COLOR_GRAY_EXTRA_DARK)
      ]
    ]
  }
}
```

`Primary_Button` is the name of your style
`highlightedTitleColor` is the name of the property which will be changed
`UIColor.fromHex(COLOR_GRAY_EXTRA_DARK)` is the value of the property

instead of `highlightedTitleColor` you could use `PK_BUTTON_HIGHLIGHTED_BACKGROUND_IMAGE` which is a constant definition to this String. All properties and definitions built in this Pod can be found in the file `TQTStylesheetsProperties.h` if you need to add a new property to any kind of view you only need to check Apple's documentation and any property can be defined in your style.


2. Use the newly created class in `TQTStylesheetImporter` to import your new style

TQTStylesheetImporter.swift
```swift
import TQTStylesheets

class TQTStylesheetImporter {
  static func setupTQTStylesheet() {
    let shared: TQTStylesheets = TQTStylesheets.sharedInstance()
    shared.import(stylesheet: ButtonStylesheet.stylesheet())
  }
}
```

### Applying styles using interface builder

**Insert print screens**

### Applying styles in Swift code

ViewController.swift
```swift
import TQTStylesheets

class ViewController: UIViewController {
  @IBOutlet weak var label: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    let shared: TQTStylesheets = TQTStylesheets.sharedInstance()
    shared.setStyle("YourStyle", for: label)
  }
}
```


#### Recommended structure

```
├──
```

## Demo App

### About

### How to run




## Contributing
Find on our [roadmap](https://github.com/afonsopacifer/open-source-boilerplate/issues/1) the next steps of the project ;)
<br>
Want to contribute? [Follow these recommendations](https://github.com/afonsopacifer/open-source-boilerplate/blob/master/CONTRIBUTING.md).

## Credits

This library has been created by [Hashi](https://github.com/ghashi/) its currently being maintained by Taqtile.

## Versioning

To keep better organization of releases we follow the [Semantic Versioning 2.0.0](http://semver.org/) guidelines.


## License
[MIT License]()
