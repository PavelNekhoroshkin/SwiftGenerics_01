import UIKit

// MARK: - Задача 1 "Сделать так, чтобы закомментиррованный код работал"



//вариант 1 - создание нового объединяющего тапа и замена функции на такую же, только уже с объединяющим типом входных параметров
protocol Addable { static func +(lhs: Self, rhs: Self) -> Self}
extension String : Addable{}
extension Double : Addable{}

//новый вариант функции
func sumTwoValues<T : Addable>(_ a: T, _ b: T) -> T {
    let result = a + b
    return result
}

//вариант 2 - добавление в String поддержки протокола Numeric не удалось реализовать


//старый вариант функции должен быть удален, иначе будет ошибка компиляции     Ambiguous use of 'sumTwoValues'
//func sumTwoValues<T : Numeric>(_ a: T, _ b: T) -> T {
//    let result = a + b
//    return result
//}



let a = 25.0
let b = 34.0

let resultDouble = sumTwoValues(a, b)
print(resultDouble)

let c = "ABC"
let d = "DEF"

let resultString = sumTwoValues(c, d)
print(resultString)


