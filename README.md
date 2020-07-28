# LEGONavigationController-Swift

[![CI Status](https://img.shields.io/travis/564008993@qq.com/LEGONavigationController-Swift.svg?style=flat)](https://travis-ci.org/564008993@qq.com/LEGONavigationController-Swift)
[![Version](https://img.shields.io/cocoapods/v/LEGONavigationController-Swift.svg?style=flat)](https://cocoapods.org/pods/LEGONavigationController-Swift)
[![License](https://img.shields.io/cocoapods/l/LEGONavigationController-Swift.svg?style=flat)](https://cocoapods.org/pods/LEGONavigationController-Swift)
[![Platform](https://img.shields.io/cocoapods/p/LEGONavigationController-Swift.svg?style=flat)](https://cocoapods.org/pods/LEGONavigationController-Swift)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

LEGONavigationController-Swift is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
source 'https://github.com/legokit/Specs.git'

pod 'LEGONavigationController-Swift'
```

## Usage
```

    @discardableResult
    public func setTitle(text: String?) -> UILabel {
        titleLabel.text = text
        return titleLabel
    }
    
    @discardableResult
    public func setTitleAttributedString(attributedString: NSAttributedString?) -> UILabel {
        titleLabel.attributedText = attributedString
        return titleLabel
    }
    
    @discardableResult
    public func setRightButton(text: String?, callback: LEGONavigationCallback?) -> LEGONavigationButton {
        rightButton.setTitle(text, for: .normal)
        rightCallback = callback
        return rightButton
    }
    
    @discardableResult
    public func setRightButtonAttributedString(text: NSAttributedString?, callback: LEGONavigationCallback?) -> LEGONavigationButton {
        rightButton.setAttributedTitle(text, for: .normal)
        rightCallback = callback
        return rightButton
    }
    
    @discardableResult
    public func setLeftButton(text: String?, callback: LEGONavigationCallback?) -> LEGONavigationButton {
        leftButton.setTitle(text, for: .normal)
        leftCallback = callback
        leftButton.isHidden = false
        backButton.isHidden = true
        return rightButton
    }
    
    @discardableResult
    public func setLeftButtonAttributedString(text: NSAttributedString?, callback: LEGONavigationCallback?) -> LEGONavigationButton {
        leftButton.setAttributedTitle(text, for: .normal)
        leftCallback = callback
        leftButton.isHidden = false
        backButton.isHidden = true
        return leftButton
    }
    
    @discardableResult
    public func setBackButton(callback: LEGONavigationCallback?) -> LEGONavigationButton {
        leftButton.isHidden = true
        backButton.isHidden = false
        leftCallback = callback
        return leftButton
    }
    
    @discardableResult
    public func setBackButton(image: UIImage?, callback: LEGONavigationCallback?) -> LEGONavigationButton {
        leftButton.isHidden = true
        backButton.isHidden = false
        backButton.setImage(image, for: .normal)
        leftCallback = callback
        return leftButton
    }
```

## Author

564008993@qq.com, yangqingren@yy.com

## License

LEGONavigationController-Swift is available under the MIT license. See the LICENSE file for more info.
