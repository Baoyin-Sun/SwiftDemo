import UIKit

var str = "Hello, playground"



var welcome: String
welcome = "123"
print(welcome, terminator: " ")

let count: Int
count = 10
print(count)

/* 这是第一个多行注释的开头
 /* 这是第二个被嵌套的多行注释 */
 这是第一个多行注释的结尾 */

let a = Int(welcome)


let minValue = Int.min  // minValue 为 0，是 UInt8 类型
let maxValue = Int.max  // maxValue 为 255，是 UInt8 类型


/*
 //字符串
 let greeting = "Guten Tag!"
 greeting[greeting.startIndex]
 // G
 greeting[greeting.index(before: greeting.endIndex)]
 // !
 greeting[greeting.index(after: greeting.startIndex)]
 // u
 let index = greeting.index(greeting.startIndex, offsetBy: 7)
 greeting[index]
 // a
 
 
 //greeting[greeting.endIndex] // error
 //greeting.index(after: greeting.endIndex) // error
 
 
 for index in greeting.indices {
 print("\(greeting[index]) ", terminator: "")
 }
 // 打印输出“G u t e n   T a g ! ”
 //你可以使用 startIndex 和 endIndex 属性或者 index(before:) 、index(after:) 和 index(_:offsetBy:) 方法在任意一个确认的并遵循 Collection 协议的类型里面，如上文所示是使用在 String 中，你也可以使用在 Array、Dictionary 和 Set 中。
 
 var welcome = "hello"
 welcome.insert("!", at: welcome.endIndex)
 // welcome 变量现在等于 "hello!"
 
 welcome.insert(contentsOf:" there", at: welcome.index(before: welcome.endIndex))
 // welcome 变量现在等于 "hello there!"
 
 
 welcome.remove(at: welcome.index(before: welcome.endIndex))
 // welcome 现在等于 "hello there"
 
 let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
 welcome.removeSubrange(range)
 // welcome 现在等于 "hello"
 //你可以使用 insert(_:at:)、insert(contentsOf:at:)、remove(at:) 和 removeSubrange(_:) 方法在任意一个确认的并遵循 RangeReplaceableCollection 协议的类型里面，如上文所示是使用在 String 中，你也可以使用在 Array、Dictionary 和 Set 中。
 
 
 
 let greeting = "Hello, world!"
 let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
 let beginning = greeting[..<index]
 // beginning 的值为 "Hello"
 
 // 把结果转化为 String 以便长期存储。
 let newString = String(beginning)
 //String 和 Substring 都遵循 StringProtocol 协议，这意味着操作字符串的函数使用 StringProtocol 会更加方便。你可以传入 String 或 Substring 去调用函数。
 
 
 let quotation = "We're a lot alike, you and I."
 let sameQuotation = "We're a lot alike, you and I."
 if quotation == sameQuotation {
 print("These two strings are considered equal")
 }
 // 打印输出“These two strings are considered equal”
 */



//数组
var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.")
// 打印“someInts is of type [Int] with 0 items.”

someInts.append(3)
// someInts 现在包含一个 Int 值
someInts = []
// someInts 现在是空数组，但是仍然是 [Int] 类型的。

var threeDoubles = Array(repeating: 0.0, count: 3)
// threeDoubles 是一种 [Double] 数组，等价于 [0.0, 0.0, 0.0]


var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
// anotherThreeDoubles 被推断为 [Double]，等价于 [2.5, 2.5, 2.5]

var sixDoubles = threeDoubles + anotherThreeDoubles
// sixDoubles 被推断为 [Double]，等价于 [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]


var shoppingList: [String] = ["Eggs", "Milk"]
// shoppingList 已经被构造并且拥有两个初始项。
//由于 Swift 的类型推断机制，当你用字面量构造拥有相同类型值数组的时候，不必把数组的类型定义清楚。shoppingList 的构造也可以这样写：
//var shoppingList = ["Eggs", "Milk"]

print("The shopping list contains \(shoppingList.count) items.")
// 输出“The shopping list contains 2 items.”（这个数组有2个项）


if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list is not empty.")
}
// 打印“The shopping list is not empty.”（shoppinglist 不是空的）


shoppingList.append("Flour")
// shoppingList 现在有3个数据项，似乎有人在摊煎饼

shoppingList += ["Baking Powder"]
// shoppingList 现在有四项了
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
// shoppingList 现在有七项了


var firstItem = shoppingList[0]
// 第一项是“Eggs”


shoppingList[0] = "Six eggs"
// 其中的第一项现在是“Six eggs”而不是“Eggs”


shoppingList[4...6] = ["Bananas", "Apples"]
// shoppingList 现在有6项


shoppingList.insert("Maple Syrup", at: 0)
// shoppingList 现在有7项
// 现在是这个列表中的第一项是“Maple Syrup”


let mapleSyrup = shoppingList.remove(at: 0)
// 索引值为0的数据项被移除
// shoppingList 现在只有6项，而且不包括 Maple Syrup
// mapleSyrup 常量的值等于被移除数据项“Maple Syrup”


firstItem = shoppingList[0]
// firstItem 现在等于“Six eggs”


let apples = shoppingList.removeLast()
// 数组的最后一项被移除了
// shoppingList 现在只有5项，不包括 Apples
// apples 常量的值现在等于字符串“Apples”


//let es = shoppingList.removeFirst()
//shoppingList.removeAll()


for item in shoppingList {
    print(item)
}
// Six eggs
// Milk
// Flour
// Baking Powder
// Bananas


for (index, value) in shoppingList.enumerated() {
    print("Item \(String(index + 1)): \(value)")
}
// Item 1: Six eggs
// Item 2: Milk
// Item 3: Flour
// Item 4: Baking Powder
// Item 5: Bananas




//集合
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")
// 打印“letters is of type Set<Character> with 0 items.”


letters.insert("a")
// letters 现在含有1个 Character 类型的值
letters = []
// letters 现在是一个空的 Set，但是它依然是 Set<Character> 类型


//var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
// favoriteGenres 被构造成含有三个初始值的集合

var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]


print("I have \(favoriteGenres.count) favorite music genres.")
// 打印“I have 3 favorite music genres.”


if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}
// 打印“I have particular music preferences.”


favoriteGenres.insert("Jazz")
// favoriteGenres 现在包含4个元素



if let removedGenre = favoriteGenres.remove("Rock") {
    print("\(removedGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}
// 打印“Rock? I'm over it.”



if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}
// 打印“It's too funky in here.”



for genre in favoriteGenres {
    print("\(genre)")
}
// Classical
// Jazz
// Hip hop


/*
 使用 intersection(_:) 方法根据两个集合的交集创建一个新的集合。
 使用 symmetricDifference(_:) 方法根据两个集合不相交的值创建一个新的集合。
 使用 union(_:) 方法根据两个集合的所有值创建一个新的集合。
 使用 subtracting(_:) 方法根据不在另一个集合中的值创建一个新的集合。
 */
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersection(evenDigits).sorted()
// []
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// [1, 9]
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
// [1, 2, 9]


/*
 使用“是否相等”运算符（==）来判断两个集合包含的值是否全部相同。
 使用 isSubset(of:) 方法来判断一个集合中的所有值是否也被包含在另外一个集合中。
 使用 isSuperset(of:) 方法来判断一个集合是否包含另一个集合中所有的值。
 使用 isStrictSubset(of:) 或者 isStrictSuperset(of:) 方法来判断一个集合是否是另外一个集合的子集合或者父集合并且两个集合并不相等。
 使用 isDisjoint(with:) 方法来判断两个集合是否不含有相同的值（是否没有交集）。
 */
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
// true
farmAnimals.isSuperset(of: houseAnimals)
// true
farmAnimals.isDisjoint(with: cityAnimals)
// true


//字典
var namesOfIntegers = [Int: String]()
// namesOfIntegers 是一个空的 [Int: String] 字典

namesOfIntegers[16] = "sixteen"
// namesOfIntegers 现在包含一个键值对
namesOfIntegers = [:]
// namesOfIntegers 又成为了一个 [Int: String] 类型的空字典


//[key 1: value 1, key 2: value 2, key 3: value 3]
//var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

print("The dictionary of airports contains \(airports.count) items.")
// 打印“The dictionary of airports contains 2 items.”（这个字典有两个数据项）

if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary is not empty.")
}
// 打印“The airports dictionary is not empty.”


airports["LHR"] = "London"
// airports 字典现在有三个数据项


airports["LHR"] = "London Heathrow"
// “LHR”对应的值被改为“London Heathrow”


/*
 作为一种替代下标语法的方式，字典的 updateValue(_:forKey:) 方法可以设置或者更新特定键对应的值。就像上面所示的下标示例，updateValue(_:forKey:) 方法在这个键不存在对应值的时候会设置新值或者在存在时更新已存在的值。和下标的方式不同，updateValue(_:forKey:) 这个方法返回更新值之前的原值。这样使得你可以检查更新是否成功。
 updateValue(_:forKey:) 方法会返回对应值类型的可选类型。举例来说：对于存储 String 值的字典，这个函数会返回一个 String? 或者“可选 String”类型的值。如果有值存在于更新前，则这个可选值包含了旧值，否则它将会是 nil ：
 */
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}
// 输出“The old value for DUB was Dublin.”


/*
你也可以使用下标语法来在字典中检索特定键对应的值。因为有可能请求的键没有对应的值存在，字典的下标访问会返回对应值类型的可选类型。如果这个字典包含请求键所对应的值，下标会返回一个包含这个存在值的可选类型，否则将返回 nil：
*/
if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport is not in the airports dictionary.")
}
// 打印“The name of the airport is Dublin Airport.”


airports["APL"] = "Apple Internation"
// “Apple Internation”不是真的 APL 机场，删除它
airports["APL"] = nil
// APL 现在被移除了


if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary does not contain a value for DUB.")
}
// 打印“The removed airport's name is Dublin Airport.”


for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}
// YYZ: Toronto Pearson
// LHR: London Heathrow

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}
// Airport code: YYZ
// Airport code: LHR

for airportName in airports.values {
    print("Airport name: \(airportName)")
}
// Airport name: Toronto Pearson
// Airport name: London Heathrow


let airportCodes = [String](airports.keys)
// airportCodes 是 ["YYZ", "LHR"]

let airportNames = [String](airports.values)
// airportNames 是 ["Toronto Pearson", "London Heathrow"]


