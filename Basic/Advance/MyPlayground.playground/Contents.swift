import UIKit

protocol NameDelegate {
    func yourName (name:String)
}

struct Profile {
    var profileName : NameDelegate?
    
    func profileInfo()  {
        print("Welcome Profile")
        profileName?.yourName(name: "Arun")
    }
    func m1() {
        print("M1 method called")
    }
}

struct User: NameDelegate {
    func yourName(name: String) {
        print("Your Name")
    }
}


var profile = Profile()
profile.profileInfo()




class A {
    var myStr:String = "TR"
    func m1() {
        myStr = "STR A Class"
        print(myStr)
    }
}

A().m1()


struct AStruct {
    var myStr:String = "TR"
    
    mutating func m1() {
        myStr = "STRs"
        print(myStr)
    }
    
    func m2()  {
        print("M2")
    }
    
}

var aStruct = AStruct()

aStruct.m1()
AStruct().m2()


print(A().m1())
