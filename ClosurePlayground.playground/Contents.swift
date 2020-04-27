import UIKit

var str = "Hello, playground"

//Swift 标准库提供了名为 sorted(by:) 的方法，它会基于你提供的排序闭包表达式的判断结果对数组中的值（类型确定）进行排序。一旦它完成排序过程，sorted(by:) 方法会返回一个与旧数组类型大小相同类型的新数组，该数组的元素有着正确的排序顺序。原数组不会被 sorted(by:) 方法修改。
//下面的闭包表达式示例使用 sorted(by:) 方法对一个 String 类型的数组进行字母逆序排序。以下是初始数组：

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]


//sorted(by:) 方法接受一个闭包，该闭包函数需要传入与数组元素类型相同的两个值，并返回一个布尔类型值来表明当排序结束后传入的第一个参数排在第二个参数前面还是后面。如果第一个参数值出现在第二个参数值前面，排序闭包函数需要返回 true，反之返回 false。
//该例子对一个 String 类型的数组进行排序，因此排序闭包函数类型需为 (String, String) -> Bool。
//提供排序闭包函数的一种方式是撰写一个符合其类型要求的普通函数，并将其作为 sorted(by:) 方法的参数传入：

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)
// reversedNames 为 ["Ewa", "Daniella", "Chris", "Barry", "Alex"]


//闭包表达式语法有如下的一般形式：
//{ (parameters) -> return type in
//    statements
//}


//闭包表达式参数 可以是 in-out 参数，但不能设定默认值。如果你命名了可变参数，也可以使用此可变参数。元组也可以作为参数和返回值。
//下面的例子展示了之前 backward(_:_:) 函数对应的闭包表达式版本的代码：

reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})

//需要注意的是内联闭包参数和返回值类型声明与 backward(_:_:) 函数类型声明相同。在这两种方式中，都写成了 (s1: String, s2: String) -> Bool。然而在内联闭包表达式中，函数和返回值类型都写在大括号内，而不是大括号外。
//闭包的函数体部分由关键字 in 引入。该关键字表示闭包的参数和返回值类型定义已经完成，闭包函数体即将开始。
//由于这个闭包的函数体部分如此短，以至于可以将其改写成一行代码：

reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )


//因为排序闭包函数是作为 sorted(by:) 方法的参数传入的，Swift 可以推断其参数和返回值的类型。sorted(by:) 方法被一个字符串数组调用，因此其参数必须是 (String, String) -> Bool 类型的函数。这意味着 (String, String) 和 Bool 类型并不需要作为闭包表达式定义的一部分。因为所有的类型都可以被正确推断，返回箭头（->）和围绕在参数周围的括号也可以被省略：

reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )

//单行表达式闭包可以通过省略 return 关键字来隐式返回单行表达式的结果，如上版本的例子可以改写为：

reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )


//Swift 自动为内联闭包提供了参数名称缩写功能，你可以直接通过 $0，$1，$2 来顺序调用闭包的参数，以此类推。
//如果你在闭包表达式中使用参数名称缩写，你可以在闭包定义中省略参数列表，并且对应参数名称缩写的类型会通过函数类型进行推断。in 关键字也同样可以被省略，因为此时闭包表达式完全由闭包函数体构成：

reversedNames = names.sorted(by: { $0 > $1 } )


//实际上还有一种更简短的方式来编写上面例子中的闭包表达式。Swift 的 String 类型定义了关于大于号（>）的字符串实现，其作为一个函数接受两个 String 类型的参数并返回 Bool 类型的值。而这正好与 sorted(by:) 方法的参数需要的函数类型相符合。因此，你可以简单地传递一个大于号，Swift 可以自动推断找到系统自带的那个字符串函数的实现：
reversedNames = names.sorted(by: >)


//如果你需要将一个很长的闭包表达式作为最后一个参数传递给函数，将这个闭包替换成为尾随闭包的形式很有用。尾随闭包是一个书写在函数圆括号之后的闭包表达式，函数支持将其作为最后一个参数调用。在使用尾随闭包时，你不用写出它的参数标签：

func someFunctionThatTakesAClosure(closure: () -> Void) {
    // 函数体部分
}

// 以下是不使用尾随闭包进行函数调用
someFunctionThatTakesAClosure(closure: {
    // 闭包主体部分
})

// 以下是使用尾随闭包进行函数调用
someFunctionThatTakesAClosure() {
    // 闭包主体部分
}


reversedNames = names.sorted() { $0 > $1 }

//如果闭包表达式是函数或方法的唯一参数，则当你使用尾随闭包时，你甚至可以把 () 省略掉：

reversedNames = names.sorted { $0 > $1 }



let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]


let strings = numbers.map {
    (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}
// strings 常量被推断为字符串类型数组，即 [String]
// 其值为 ["OneSix", "FiveEight", "FiveOneZero"]



//举个例子，这有一个叫做 makeIncrementer 的函数，其包含了一个叫做 incrementer 的嵌套函数。嵌套函数 incrementer() 从上下文中捕获了两个值，runningTotal 和 amount。捕获这些值之后，makeIncrementer 将 incrementer 作为闭包返回。每次调用 incrementer 时，其会以 amount 作为增量增加 runningTotal 的值。
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}



