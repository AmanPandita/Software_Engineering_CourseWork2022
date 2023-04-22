import UIKit

var greeting = "Hello, playground"

func cook(food: String) -> String {
    var transformedFood = ""
    
    switch food {
    case "🌽": transformedFood = "🍿"
    case "🐮": transformedFood = "🍔"
    case "🐔": transformedFood = "🍳"
    default: transformedFood = food // remains uncooked
    }
    
    return transformedFood
}

let meals = ["🌽", "🐮", "🐔"].map(cook)


//case 3
//func eat(cooked1: String, cooked2: String) -> String {
//    return "💩" }
//let poopEmoji: String = meals.reduce("", eat)



//case 4

//func isVegetarian(cookedFood: String) -> Bool
//{
//    var isVeg = false
//    switch cookedFood {
//    case "🍿": isVeg = true
//    case "🍔": isVeg = false
//    case "🍳": isVeg = true
//    default: isVeg = false
//
//    }
//    return isVeg
//
//}
//
//let veg = ["🌽", "🐮", "🐔"].map(cook).filter({ x in
//    isVegetarian(cookedFood: x)
//})


//case 6


//for _ in 0...10
//{
//    let foodNames = ["🍔": "hamburger", "🍟": "french fries", "🌽": "popcorn"]
//
//    var outcome = foodNames.map { key, value in value.capitalized }.reduce("", {x, y in x + " " + y })
//    outcome.removeFirst()
//    print(outcome)
//    assert(
//        outcome == "French Fries Hamburger Popcorn" ||
//        outcome == "French Fries Popcorn Hamburger" ||
//        outcome == "Popcorn French Fries Hamburger" ||
//        outcome == "Popcorn Hamburger French Fries" ||
//        outcome == "Hamburger French Fries Popcorn" ||
//        outcome == "Hamburger Popcorn French Fries"
//    )
//
//}


//case 7


//let outcome = [2, 3, 5, 8].map { x in x+1 }.reduce(1, *)
//assert(outcome == 648)

//case 7 using a for loop

//var lls = [2, 3, 5, 8]
//for i in 0...(lls.count - 1)
//{
//    lls[i] += 1
//
//}

//case 8

let arr = [2, 3, 5, 8].map { x in x+1 }
var outcome = 1
for i in arr
{
    outcome = outcome * i
    
}
