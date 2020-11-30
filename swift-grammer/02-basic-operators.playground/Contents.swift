// # Basic Operator

// - # Nil-Coalescing Operator # -
/*
 nil-coalescing operator(a ?? b)은 optional a 가 값을 가지면 해체하고 만약 값이 존재하지 않으면 a에 b를 할당한다.
 아래의 코드의 단축어가 nil-coalescing이다.
 a != nil ? a! : b
 */
let defaultColorName = "red"
var userDefinedColorName: String? // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName is nil, so colorNameToUse is set to the default of "red".

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName is not nil, so colorNameToUse is set to the default of "green".


// - # Range Operator # -

// - Closed Range Operator -
/*
 (a...b)
 a <= X <= b
 */

// - Half-Open Range Operator -
/*
 (a..<b)
 a <= x < b
 */

// - One-Sided Ranges -

let names = ["Anna", "Alex", "Brian", "Jack"]

for name in names[2...] {
    print(name)
}
// Brian
// Jack

for name in names[...2] {
    print(name)
}
// Anna
// Alex
// Brian

