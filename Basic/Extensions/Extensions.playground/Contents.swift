import UIKit

extension Double {

    func round(to places:Int) -> Double  {
        var prefixValue = pow(10, Double(places))
        var num = self
        num = num * prefixValue
        num.round()
        num = num / prefixValue
        return num
    }
}

class Calc {
    var num:Double = 55.559908
    
    func myRoundValue()  {
        var roundValue = num.round(to: 3)
        print("Num Value: ",roundValue)
    }
    
}

Calc().myRoundValue()

///-------------------------------------//////////////////////

extension UILabel {
    func shaCircleLable()  {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.width / 2
    }
}


var myLable = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
myLable.backgroundColor = .red
myLable.shaCircleLable()


