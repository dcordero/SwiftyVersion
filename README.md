# Version

A simple object to manage **Versions** in Swift

## Initialization

Using the default separator (which is a single point)
```
let myVersion = Version ("1.5.2")
```

Or using a different separator
```
let myVersion = Version ("1-5-1", usingSeparator: "-")
```

## Logic Operator

**Version** supports the ```==```, ```>```, ```<```, ```<=```, and ```>=``` operators


## Example

```
let myVersion1 = Version ("1-5-2", usingSeparator: "-")
let myVersion2 = Version ("1.5.2.1")

println(myVersion1 == myVersion2) // "false"
println(myVersion1 > myVersion2)  // "false"
println(myVersion1 >= myVersion2) // "false"
println(myVersion1 < myVersion2)  // "true"
println(myVersion1 <= myVersion2) // "true"
```
