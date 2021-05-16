import Foundation

// Stored Properties

var a: Int = 10

var b: Int = 30

// Computed Properties GET and SET Property

var total : Int {
    
    get {
        return a+b
    }
    set {
        a = 100
        print(newValue," \(a)") // newValue is the 30 and total is 130
    }
    
}

print(total) // 40

total = 30 // Call and execute Set Property Block AND print a value

print(total) // 130


// Observed Property for perform line of code before and after set the value

var observedPropResult: Int = 50 {
    willSet{
        print("Old Value",observedPropResult)
        print("New Value",newValue)
    }
    didSet {
        print("Old Value: ",oldValue)
        print("New Value: ",observedPropResult)
        observedPropResult = 20
    }
}

observedPropResult = 10
print(observedPropResult)


// Tuples :  returning multiple values from a function
// Tuple won't need any key value pairs like Dictionary
var tup = (age: 10, name:"Arun", 603002)

print(tup.name) // Arun
print(tup.2) // 603002
