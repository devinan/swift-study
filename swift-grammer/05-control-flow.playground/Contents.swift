// # Control Flow

// - # Value Bindings # -

let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with an y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y)")
}
// Prints "on the x-axis with an x value of 2"
/*
 switch 문에 모든 경우의 수가 case 문으로 구성되어 있으면 default 문을 사용할 필요가 없다.
 */


// - # Where # -
/* Switch 문에서 추가적인 조건을 체크하기 위해서는 where문을 사용한다. */

let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}
// Prints "(1, -1) is on the line x == -y"


// - # Control Transfer Statements # -
/*
 1. continue
 2. break
 3. fallthrough
 4. return
 5. throw
 */

// - Continue -
/* 현재 루프의 행동을 멈추고 다음 루프의 시작을 하는 구문이다.*/

let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
    if charactersToRemove.contains(character) {
        continue
    }
    puzzleOutput.append(character)
}
print(puzzleOutput)

// - Break -
/* break 문은 전체의 조건문을 즉각적으로 종료시키는 구문이다.*/


// - # Break in a Loop Statement # -
/* 루프문에 break의 역할은 현재 루프를 중단시키는 뿐만 아니라 더이상 루프 자체를 중단한다.*/


// - # Break in a Switch Statement # -
/* switch 문은 case 문을 비워두는것을 허용하지 않기 때문에 분명한 목적을 가지고 case문을 무시하기 위해서는 필요한 구문이다.
 default문에 액션이 필요하지 않을 경우에 유용하다.*/

let numberSymbol: Character = "三"  // Chinese symbol for the number 3
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
    possibleIntegerValue = 1
case "2", "٢", "二", "๒":
    possibleIntegerValue = 2
case "3", "٣", "三", "๓":
    possibleIntegerValue = 3
case "4", "٤", "四", "๔":
    possibleIntegerValue = 4
default:
    break
}
if let integerValue = possibleIntegerValue {
    print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
    print("An integer value could not be found for \(numberSymbol).")
}
// Prints "The integer value of 三 is 3."


// - Fallthrough -
/* C style 구문이다. 키워드 fallthrough*/

// - Laveled Statements -
/* 루프 전체를 이름을 규정하면 복잡한 루프 혹은 continue, break 문을 유용하게 활용할 수 있습니다.
 label name: while condition {
    statements
 }
 */

let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var square = 0
var diceRoll = 0

gameLoop: while square != finalSquare {
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1}
    switch square + diceRoll {
    case finalSquare:
        // diceRoll will move us to the final square, so the game is over
    break gameLoop
    case let newSquare where newSquare > finalSquare:
        // diceRoll will move us beyond the final square, so roll again
    continue gameLoop
    default:
        // this is a valid move, so find out its effect
        square += diceRoll
        square += board[square]
    }
}
print("Game over!")
/*
 continue gameLoop에서 라벨인 gameLoop를 사용하는 것은 꼭 필요한건 아니다.
 왜냐하면 continue는 루프의 문에서 영향을 준다. 위의 코드에서는 루프는 한개밖에 없기 때문이다.
 즉 break문 때문에 라벨이 필요했다. 왜냐하면 break문은 루프 혹은 스위치문에도 영향을 주기 때문이다.
 */


// - # Early Exit #-
/* guard 문은 if 문과 같은 Boolean 값을 지닌 표현문이다.
 guard문의 조건이 참이어야 guard문 밖의 코드가 실행되려면 guard 문을 사용해라.
 조건이 거짓일 경우는 밖의 코드를 실행하지 못하고 guard문의 내부 코드가 실행된다.*/

func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    print("Hello \(name)!")
    
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    print("I hope the weather is nice in \(location).")
}

greet(person: ["name": "John"])
greet(person: ["name" : "Jane", "location": "Cupertino"])

/*
 guard 문은 if 문보다 조금 더 가독성을 높여주며 조건이 참일때 실행되는 코드를 블록으로 포장하지 않아도 된다.
 그리고 조건 옆에 그 조건에 위반일때 실행되는 코드를 옆에 포장할 수 있다.
 */
