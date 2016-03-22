# realm-swift-basic
How to incorporate realm in Swift | Xcode 7 and above

Please use pod update to sync with Cocoapod.


Usage

let myDog = Dog()
myDog.name = "Rex"
myDog.age = "3"
myDog.health = "Good"

let realm = try! Realm()

// Persist your data easily
try! realm.write {
    realm.add(myDog)
}
