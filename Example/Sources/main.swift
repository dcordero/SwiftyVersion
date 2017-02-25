
import Foundation
import SwiftyVersion


let myVersion1 = Version("1-5-2", usingSeparator: "-")
let myVersion2 = Version("1.5.2.1")

print(myVersion1 == myVersion2) // "false"
print(myVersion1 > myVersion2)  // "false"
print(myVersion1 >= myVersion2) // "false"
print(myVersion1 < myVersion2)  // "true"
print(myVersion1 <= myVersion2) // "true"

