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


//字符串
//
//let greeting = "Guten Tag!"
//greeting[greeting.startIndex]
//// G
//greeting[greeting.index(before: greeting.endIndex)]
//// !
//greeting[greeting.index(after: greeting.startIndex)]
//// u
//let index = greeting.index(greeting.startIndex, offsetBy: 7)
//greeting[index]
//// a
//
//
////greeting[greeting.endIndex] // error
////greeting.index(after: greeting.endIndex) // error
//
//
//for index in greeting.indices {
//   print("\(greeting[index]) ", terminator: "")
//}
//// 打印输出“G u t e n   T a g ! ”
////你可以使用 startIndex 和 endIndex 属性或者 index(before:) 、index(after:) 和 index(_:offsetBy:) 方法在任意一个确认的并遵循 Collection 协议的类型里面，如上文所示是使用在 String 中，你也可以使用在 Array、Dictionary 和 Set 中。
//
//var welcome = "hello"
//welcome.insert("!", at: welcome.endIndex)
//// welcome 变量现在等于 "hello!"
//
//welcome.insert(contentsOf:" there", at: welcome.index(before: welcome.endIndex))
//// welcome 变量现在等于 "hello there!"
//
//
//welcome.remove(at: welcome.index(before: welcome.endIndex))
//// welcome 现在等于 "hello there"
//
//let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
//welcome.removeSubrange(range)
//// welcome 现在等于 "hello"
////你可以使用 insert(_:at:)、insert(contentsOf:at:)、remove(at:) 和 removeSubrange(_:) 方法在任意一个确认的并遵循 RangeReplaceableCollection 协议的类型里面，如上文所示是使用在 String 中，你也可以使用在 Array、Dictionary 和 Set 中。
//
//
//
//let greeting = "Hello, world!"
//let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
//let beginning = greeting[..<index]
//// beginning 的值为 "Hello"
//
//// 把结果转化为 String 以便长期存储。
//let newString = String(beginning)
////String 和 Substring 都遵循 StringProtocol 协议，这意味着操作字符串的函数使用 StringProtocol 会更加方便。你可以传入 String 或 Substring 去调用函数。
//
//
//let quotation = "We're a lot alike, you and I."
//let sameQuotation = "We're a lot alike, you and I."
//if quotation == sameQuotation {
//    print("These two strings are considered equal")
//}
//// 打印输出“These two strings are considered equal”



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


