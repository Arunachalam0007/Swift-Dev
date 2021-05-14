import UIKit



//Optionals her ? is optional and ! is an unwrap

var opt:String? = nil

opt = "ABCddd"
print(opt!)



var testDict : [String:Int] = ["b":30,"a":20,"c":10, "d":50]
print(testDict["b"]!) 
var result  = testDict.max { a, b in a.value < b.value }! // need to check it's return type element
print(result)

 


//var b;  // we can't declar the variable we must need to initialize
//print(b)

var a:String = "testing"

// var d?Int = nil



// print(d)

print(a)


var name = ["a","b","c"]
print(name)
print(name[0])

var intArrrays:[Int] = [1,2,3,4]
print(intArrrays)


//Any(Which will contain anytype of variables)
var allVariables:[Any] = ["abc",20,true,30.4]

print(allVariables)

for i in intArrrays{

    if i == intArrrays[3] {
        break;
    }
    print(i)
}

// Declearing the dictionary

var myDict2:[String:String] = ["arun":"89277", "Sha":"283728", "Raina":"77972"]

//
var myDict1:[String:Any] = ["arun":89277, "Sha":"283728", "Raina":"77972"]


print(myDict2)
myDict2.randomElement()

for _dict in myDict2{
    print(_dict.key)
}

//let n = nil;


// Empty array

var myEptArray:[String] = []

var myEptArray1 = [String]()
//var myEptArray1 = [String]("Abc","efg");

print(myEptArray1.count)
print(myEptArray.count)



// Array Value replacement

var myReplaceArray:[String] = ["a","b","c","d"];

print(myReplaceArray)

myReplaceArray[1] = "Arun"

print(myReplaceArray)


// Dict Replacement
var myReplaceDict: [String:Any] = ["a":100,"b":200,"c":300]


myReplaceDict["b"] = 500;
myReplaceDict.updateValue(1000, forKey: "Z")
print(myReplaceDict)

// Add Value to Dict

var myDicAdd = [Int:Any]();

myDicAdd[2] = "200"
myDicAdd[3] = "300"

myDicAdd[4] = "400"


print(myDicAdd);

//Functions

for (key,value) in myDicAdd {
    print("\(key) \(value)")
}


func first() {
    print("First")
}


func second(a: Int) {
    print("second",a)
}

func third(a: Int,b: Int) {
    print("third",a+b)
}

func fourth(a: String,b: String) {
    print("fourth",a+b)
}

func fifth(_ a: String,_ b: String) {
    print("third",a+b)
}

func add(a:Int, b: Int) -> Int {
    return a+b
}



first()
second(a: 100)
third(a: 100, b: 200)
fourth(a: "Welcome", b:"Test")
fifth("Ram", "Kumar")
print(add(a: 100, b: 2004))


func firstFunc(a:Int, _ b:String)->String{
    print("My First Func",a,b)
    return "ABC"
}
print(firstFunc(a: 2, "test"))

print(firstFunc(a: 4, "test123"))




//Dict Basic methods

var basicDict = [1:"a",2:"b"]

print(basicDict[1] ?? "")

var basicDict1 = [Int:Any] () // Empty Dictionary deleration


//add dict values
basicDict.updateValue("One", forKey: 1)

basicDict1.updateValue("One", forKey: 1)
basicDict1.updateValue(20, forKey: 2)

var mySecondDictValue  = basicDict[1]

print(basicDict[1]) // Optional("a")
print("My Second String Value",mySecondDictValue) // Optional("a")

 var mySecondDictValue1 = basicDict1[1] // We must give an exact datatype to optional data for
print(basicDict1[2] ?? 0) // ?? is a typecasting and make it to string value
//basicDict
print(mySecondDictValue1)




// Add empty value to Dict

var myEmpDic1 = Dictionary<Int,String>()
var myEmpDic2:Dictionary<Int,String> = [Int:String]()

print(myEmpDic1)



var str1:String = "abc"
var str2:String = "def"

var str3:String = str1+str2
print(str3)
str1.append("rrr")
str1.prefix(1)
print(str1)
//str1.removeFirst()
str1.remove(at: str1.firstIndex(of: "a")!)
print(str1)
//str1 = "1"
//print(str1)






struct UserInfo {
    let name:String
    var age : Any?
    var gender: String
    
//    init(ae age:Int){ // here ae is a exteranal argument for age
//        self.age = age // we must use internal argument of age
//        self.name = "SHA"
//        self.gender = "male"
//        print("Init Method Called")
//       // getUserInfo()
//    }
    
    mutating func getUserInfo() {
        //self.gender = "male"
        gender = "Arun SHA"
        print("My Name \(name)  age  ",age ?? "" )
    }
    
}

//var arun =  UserInfo(ae:20) // we must call external argument only

let sha  = UserInfo(name: "", gender: "")



var opString:String?


var name1:String?
var name2:String?

// optional chaning
if let firstName = name1 ,let secondName = name2 {
    print("Hi")
}

//print(firstName)


// guard  we must specifiy this guard inside method only and it's like //
func m2(){
    name1 = "Sha"
    guard let firstName5 = name1 else {
        print("Hi")
        return
    }
    print(firstName5)
}

m2();



//
//
//print(opString)
//
//if let bindString = opString {
//    print("")
//}
//
//


protocol P1 {
    func test()
}

protocol p2 {
    func test2()
}

struct S: P1, p2 {
    func test2() {
        print("test2")
    }
    
    func test() {
        print("test")
    }
    
}
