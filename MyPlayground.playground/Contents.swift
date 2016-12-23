//: Playground - noun: a place where people can play
import UIKit


var str = "Hello, world"
str = "o"
str

var value:Int = 7
var value2 = "This book is "

let math = 36.676
let math2:Float = 0
let math3:Double = 36

let sentence = "Today is "
let day:Double = 7.5
let together = sentence + String(day)

let bananas:Float = 9.5434
let tomatos:Float = 4.94565
let bananastogether = "He has \(bananas) bananas."
let tomatostogether = "You have \(tomatos) tomatoes."
let fruittotal = bananas + tomatos
let bodyweight = 50.6
let bodyheight = 1.6
let name = "Sam"
let bmi = bodyweight / (bodyheight * bodyheight)
let fbmi = String(format: "%.3f", bmi)
print ("\(name)你好，你的BMI是\(bmi)")

var shoppingList = ["car","house","pen"]
shoppingList [0] = "motor"

var occupations = ["Sam":"Person","Tiger":"Animal"]
occupations["cellphone"] = "Thing"
occupations

let emptyarray = [String]()
let emptyarray2 = [String: Float]()

shoppingList = []
occupations = [:]

var find = [
    "apple":"蘋果",
    "orange":"柳丁"
]

var find2 = ["pen","pencil","bag","ruler"]
find2 [3] = "USB"
find2 [0] = "eraser"
find2
find ["orange"]
find["watermelon"] = "西瓜"
find

var mydata = [[String:Int]]()
let firstdata = ["one":1,"two":2]
let seconddata = ["three":3,"four":4,"five":5]
mydata.append(seconddata)
mydata = [firstdata,seconddata]
shoppingList = []
shoppingList

find = [:]
find

var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

let vegetable = "red pepper"
switch vegetable
{
    case "celery":
    print("Add some raisins and make ants on a log.")
    case "cucumber","watercress":
    print("That would make a good tea sandwich")
    case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)")
    default:
    print("Everything tates good in soup.")
}

let interestingnumbers = [
    "a":[1,2,3,4],
    "b":[5,6,7,8,],
    "c":[9,10,11,12]
]
var largest = 0
var largestkind = ""

for (kind, numbers) in interestingnumbers
{
    for number in numbers
    {
        if number > largest
        {
            largest = number
            largestkind = kind
        }
    }
}
print("最大數：\(largest), 類別在：\(largestkind)")


var total = 0
for i in (0...10).reversed()
{
    total += i
    i
}

var n = 10
while n < 1000
{
    n = n * 10
}
print(n)

var m = 4
while m < 32
{
    m = m * 4
}

print(m)
//===================================================
func hasAnyMatches (list:[Int], condition:(Int) -> Bool) -> Bool
{
    for item in list
    {
        if condition (item)
        {
            return true
        }
    }
    return false
}
var numbers = [20, 19, 7, 12]
//===================================================
func lessThanTen(number:Int) -> Bool
{
    return number < 10
}
hasAnyMatches(list: numbers, condition: lessThanTen)
//===================================================
func multiplyBy3 (number:Int) -> Int
{
    let result = 3 * number
    return result
}
numbers.map(multiplyBy3)

numbers.map { (number) -> Int in
    if number % 2 != 0
    {
        return 0
    }
    else
    {
        return number
    }
}

let numberssorted = numbers.sorted { (first, second) -> Bool in
    return first > second
}

class shape
{
    var everyside = 0
    let shape = "三角形"
    func simpleside (width:Double) -> String
    {
        return "A shape with \(everyside),and \(width)"
    }
    func everyheight (height:Int) -> String
    {
        return "這是 \(shape)，厚度：\(height)"
    }
}
var a3Dshape = shape()
a3Dshape.everyside = 30
a3Dshape.simpleside(width:20.56)
a3Dshape.everyheight(height:100)
a3Dshape.everyside
//========================================================
enum Rank:Int
{
    case ace = 1, two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func simpleDescription() -> String
    {
        switch self
        {
            case .ace:
                return "ace"
            case .jack:
                return "jack"
            case .queen:
                return "queen"
            case .king:
                return "king"
            default:
                return String(self.rawValue)
        }
    }
}
let ace = Rank.seven
let aceRawValue = ace.rawValue

func compare (Rank1:Rank, Rank2: Rank) -> String
{
    if Rank1.rawValue > Rank2.rawValue
    {
        return "參數一 > 參數二"
    }
    else if Rank1.rawValue < Rank2.rawValue
    {
        return "參數一 < 參數二"
    }
    else
    {
        return "參數一 = 參數二"
    }
}

compare(Rank1: .four, Rank2: .three)
//===================================
func calculateStatistics(scores:[Int]) -> (min:Int, max:Int, sum:Int)
{
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores
    {
        if score > max
        {
            max = score
        }
        else if score < min
        {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}

let statistics = calculateStatistics(scores:[5, 3, 100, 3, 9])
print(statistics.1)
print(statistics.max)
//====================================
enum Direction:String
{
    case North = "N", South, East, West
}

let D = Direction.East
D.rawValue
//===================================
enum Suit
{
    case spades, hearts, diamonds, clubs
    func simpleDescription() -> String
    {
        switch self
        {
            case .spades:
                return "黑桃"
            case .hearts:
                return "紅心"
            case .diamonds:
                return "鑽石"
            case .clubs:
                return "梅花"
        }
    }
    func color() -> String
    {
        switch self
        {
            case .spades, .clubs:
                return "黑色"
            case .hearts, .diamonds:
                return "紅色"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
hearts.color()
Suit.spades.color()
//==================================================
let city = (Taipei: 100, Taichung: 78)
print("Tapei is \(city.Taipei)")
print("Taichung is \(city.Taichung)")
let country = ("Taiwan", "China", 234)
print("I like \(country.2)")
let numberString:String? = nil
//if number != nil
//{
//    print("This is \(number!)")
//}
if let a = numberString
{
    print("Real \(a)")
}

let one = -1
print(-one)

let tall = 180
let short = 110
let result = true
result ? 30 : 20

let a = false
if !a
{
    print("It's \(a)")
}

let nothing = "hello world"
if nothing.isEmpty
{
    print("This is Empty")
}
else
{
    print("This is not Empty")
}

var member = ["爸爸","媽媽","妹妹","弟弟"]
member
print("成員有\(member.count)人")
for i in 0 ..< member.count
{
        print("第\(i+1)位是\(member[i])")
}

var match = ["鼠":"生肖","我是誰":"電影","豐田":"汽車","家樂福":"大賣場"]
match["電腦"] = "資訊用品"
match

for (kind,name) in match
{
    print("Kind:\(kind)、Name:\(name)")
}

func ytvc(name:String) -> String
{
    return "幼獅職訓場的場長是\(name)"
}
ytvc(name: "蕭行明")

var x = 123, y = 456
var temp:Int
temp = x
x = y
y = temp

print("x=\(x)、y=\(y)")



extension Int
{
    func add(z:Int) -> Int
    {
    x += 100 + z
    return x
    }
}

print("\(2.add(z:34))")