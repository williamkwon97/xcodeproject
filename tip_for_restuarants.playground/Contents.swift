import UIKit
let restaurants:[(String,Float,Float,Float)] = [("Salty Sow",30.00,0.20,0.0825),("Kerby Lane",10.99,0.18,0.0825),("Milto's",10.50,0.18,0.0825),("Trudy's",11.70,0.18,0.0825),("Madam Mam's",13.99,0.18,0.0825),("Vert's",7.99,0.15,0.0825),("Teji's",8.99,0.15,0.0825),("Home",0,0,0.0825)]
let week = [1,2,3,4,5,6,7,8,9,10,11,12,13,14]
let days = ["Sunday","Monday","Tuesday","Wendnesday","Thursday","Friday","Saturday"]
var Current_Budget:Float = 0.0
func Calculate_Price ( Price:Float, Tax:Float, Tip:Float) -> Float {
return Price+(Price*Tip)+(Price*Tip)
}
func budgetmeet (Budget: Float,Price:Float,Tax:Float, Tip:Float) -> Bool {
    if Budget > Price+(Price*Tip)+(Price*Tax){
       return false
    }
    else{
        return true
    }
}
func Print_Func( week: Int, day: String , restaurant:String, budget: Float ) -> String{
    return "Week \(week)\n\(day) meal: \(restaurant) budget now \(budget) "
}
for i in week{
    
    Current_Budget += 50.00
    print()
    print("Week \(i)")
    for day in days{
        var restauarant_found:Bool = false
        while (!restauarant_found) {
            let restaurant_random = Int (arc4random_uniform(UInt32(8)))
            let restaurant = restaurants[restaurant_random]

            var caculated = Calculate_Price( Price: restaurant.1, Tax: restaurant.2,Tip: restaurant.3)
            if caculated < Current_Budget {
               Current_Budget -= caculated
               print("\(day) meal: \(restaurant.0), budget now \(Current_Budget) ")
               restauarant_found = true
            }
    }
}}
