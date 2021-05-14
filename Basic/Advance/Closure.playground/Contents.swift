import UIKit

// Closure - It's essentially anonymous function or function without a name and they are essentially self contained function

// Closure can give use to provide anonymous parameter name using $0, $1 and so on


func calc ( n1:Int , n2:Int, operation:(Int,Int)->Int) -> Int {
    return operation(n1,n2)
}

func multi (n1:Int, n2:Int) -> Int {
    print("Multi Func called")
    return n1 * n2
}


//calc(n1: 10, n2: 10, operation: multi(n1:n2:) // need to ask why we have multi with argument n1 and n2

// passing normal func
var result = calc(n1: 10, n2: 10, operation: multi)

// Closure 1:  passing closure func
var col1Result = calc(n1: 10, n2: 100, operation: { (n1:Int, n3:Int) -> Int in
   print("Closure1 get called")
   return n1 * n3
})

//Closure 2: Without Datatype and return --> but code of line should not be more than one if morethan one we must use return keyword
var col2Result = calc(n1: 10, n2: 300, operation: { (n1,n2) in
    n1*n2
})

// Closure 3: anonymous parameter name using $0, $1
var col3Result = calc(n1: 10, n2: 300, operation: { $0 * $1 })

// Closure 4: Trailing Closure

var col4Result = calc(n1: 10, n2: 400) { $0 * $1 }



print(col4Result)


// Real Time exe

var myArray  = [1,2,3,4,5,10]

func add (n1:Int) ->Int {
    return n1+1
}

myArray.map(add)
myArray.map{
    n1 -> Int in
    return n1
}
print(myArray.map{$0+1})
print(myArray.map{"\($0+1)"}) // convert to String




func findGreaterNumInArr (cl:(Int) -> Bool ,value: Int, number: [Int]) -> [Int] {
    
    var greaterValue = [Int]()
    
    for num in number {
        if cl(num) {
            greaterValue.append(num)
        }
    }
    return greaterValue
}


let result1 = findGreaterNumInArr(cl: { (num) -> Bool in
    num > 5
}, value: 2, number: [2,3,4,5,10])


