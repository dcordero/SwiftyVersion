# SwiftyVersion [![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](http://www.gnu.org/licenses/gpl-3.0)


A simpler method to manage **Versions** in Swift

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
