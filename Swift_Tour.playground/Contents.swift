import UIKit

var str = "Hello, playground"

str

print("Hello, world!")

print(str)

print("訊息：\(str)")

//===============簡單值=================
//使用let來宣告一個常數，用var來宣告一個變數。
var myVariable = 42     //使用型別推測
myVariable = Int(41.2)  //不會自動轉型
myVariable = 50
let myConstant = 42.0   //型別推測針對小數的部分，只會推測成Double

let aConstant:Float     //常數可以一開始不設值
aConstant = 39          //常數在第一次設值之後，就不可以再更動

let implicitInteger = 70            //推測成Int型別
let implicitDouble = 70.0           //推測成Double型別
let explicitDouble:Double = 70     //使用冒號明確指定變數的型別

//練習1
//創建一個常數並明確宣告型別為Float，設值為4
let testConstant:Float = 4
//testConstant = 4

//Swift不會幫你自動轉型
let label = "The width is "
let width = 94
let widthLabel = label + String(width)  //不同型別的運算，只能自己轉換成相同型別後運算

//練習2
//試試去掉最後一行的轉換標記String，看看會有怎樣的報錯？

print("\(label)\(width)")

//即使Double與Float的型別類似也必須轉型！
let aCounter = Float(explicitDouble) + testConstant

//更簡單的方法來把值加入字串，使用\()語法
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

//練習3：計算某人的BMI
let bodyHeight = 1.7
let bodyWeight = 60.5
let name = "Perkin"
let bmi = bodyWeight / (bodyHeight * bodyHeight)
let fBmi = String(format: "%.2f", bmi)  //格式化
print("\(name)你好：BMI是\(fBmi)")





