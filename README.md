# SwiftyVersion 
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) [![Build Status](https://travis-ci.org/dcordero/SwiftyVersion.svg?branch=master)](https://travis-ci.org/dcordero/SwiftyVersion)

A simpler way to manage **Versions** in Swift

## Initialization

Using the default separator (which is a single point)
```
let myVersion = Version("1.5.2")
```

Or using a different separator
```
let myVersion = Version("1-5-1", usingSeparator: "-")
```

## Logic Operator

**Version** supports the ```==```, ```>```, ```<```, ```<=```, and ```>=``` operators


## Example

```
let myVersion1 = Version("1-5-2", usingSeparator: "-")
let myVersion2 = Version("1.5.2.1")

print(myVersion1 == myVersion2) // "false"
print(myVersion1 > myVersion2)  // "false"
print(myVersion1 >= myVersion2) // "false"
print(myVersion1 < myVersion2)  // "true"
print(myVersion1 <= myVersion2) // "true"
```

## Installation

### Cocoapods

To integrate SwiftyVersion into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'SwiftyVersion', '~> 0.2.1'
end
```
