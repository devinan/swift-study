// - # The Basic # -

// # Constants and Variables

// - Declaring Constants and Variables -

let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0
/*
 상수는 let 키워드, 변수는 var 키워드, 항상 사용하기전에 초기화해야한다.
*/

var x = 0.0, y = 0.0, z = 0.0
// 다중의 상수와 변수들은 단일 라인으로 선언할 수 있다. 쉼표로 분리시키면 된다.

// - Type Annotations -

/* 타입의 유형을 지정하면 좀더 분명하게 확인할 수 있다.*/
var welcomeMessage: String
/* welcomeMessage 변수는 이제 String의 값들을 저장할수 있다.*/
welcomeMessage = "Hello"
/* 단일 라인에 똑같은 타입을 가진 변수가 있으면 마지막 변수뒤에 타입을 지정하면 된다.*/
var red, green, blue: Double

/*
 !) 실제로 타입 지정을 쓸 필요가 없다. 상수 또는 변수에 대한 초기 값이 제공되면 스위프트는 항상 해당 타입을 추론할 수 있다.
 위의 예제에서는 초기값을 제공하지 않았기 때문에 초기값을 추론하지 않고 타입 지정으로 타입이 결정된다.
 */

// - Naming Constants and Variables -

/*
 상수와 변수의 이름은 대부분 문자와 유니코드의 문자열을 포함시킨다.
 빈 공백의 문자열, 수학적 표기, 화살표, 스칼라등은 포함시킬수 없다.
 그리고 첫 시작에는 숫자가 올수 없지만 첫 시작외에는 숫자가 포함될수 있다.
 한번 특정한 타입의 변수, 상수를 선언하면 다시 다른 타입 혹은 똑갑은 이름을 선언할수 없다!
 */

// - Printing Constants and Variables -

var friendlyWelcome = "Bonjour!"

print(friendlyWelcome)
// prints "Bonjour!"

/*
 print(_:separator:terminator:) 함수는 전역 함수이다. 산출 결과는 콘솔창에 표시된다.
 separator 와 terminator 는 기본값을 가진다. 그래서 생략할수 있다.
 문자열 안에 상수와 변수를 포함시키고 싶으면 /(Value)를 작성하면 된다.
 */

print("The current value of friendlyWelcome is \(friendlyWelcome)")
// Prints "The current value of friendlyWelcome is Bonjour!"


// - # Commetns # -

/*
 C 언어와 유사하다. 예외 사항은 아래와 갑다 중첩해서 쓸수 있다.
 */

/* This is the start of the first multiline comment.
 /* This is the second, nested multiline comment. */
This is the end of the first multiline comment. */


// - # Semicolons # -
// 다른 언어와 달리 필수 사항은 아니다. 원하면 작성하면 된다.
let cat = "🐱"
print(cat)


// - # Integers # -
// C와 유사하고 스위프트의 모든 타입처럼 정수형 타입도 대문자를 가진다. Int


// - # Floating-Point Numbers # -
// Double 과 Float 있다.


// - # Type Safety and Type Inference # -

/*
 스위프트는 타입 안정성 언어이다. 즉 실수로 일어나는 문제들을 막아준다.
 다만 타입을 지정하지 않아도 모든 문제를 막아주는 건 아니다.
 왜냐하면 타입의 지정을 안했을 경우 타입의 추론으로 적절한 타입을 지정해준다.
 타입의 추론은 엄청 유용하지만 더블 혹은 플로트 같은 애매한 경우에는 완벽하지 않다.
 */
let meaningOfLife = 42
// meaningOfLife는 Int 타입으로 추론 한다.


// - # Numeric Literals # -
// 가독성이 좋아지면서 추가적인 형식을 포함해도 기본적인 리터럴에 영향을 주지 않는다.


// - # Numeric Type Conversion #-

// 변환을 직관적으로 할수 있다. 그리고 명시적으로 사이즈를 결정하면 혼란을 방지한다.


// - # Type Aliases #-
/*
 Type Aliases는 존재하고 있는 타입에 대안적인 이름을 규정한다. typealias 키워드를 사용할수 있다.
 존재하고 있는 타입을 문맥적으로 더 적절한 이름으로 규정하기를 원할때 유용하다.
 */
typealias AudioSample = UInt16

var maxAmplitudeFound = AudioSample.min


// - # Booleans # -
// 논리적이면서 오로지 두가지 상수인 true 와 false 만 가진다.


// - # Tuples # -
/*
 Tuples은 여러 값을 단일 복합 값으로 그룹화한다.
 Tuple안의 값들은 어떤 타입도 될수 있으며 서로 같은 타입일 필요가 없다.
 */
let http404Error = (404, "Not Found")
// http404Error 는 (Int, String) 타입의 튜플이다.

/*
 튜플의 값들은 상수 혹은 변수로 분리시킬 수 있다.
 */
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// Prints "The status code is 404"
print("The status message is \(statusMessage)")
// Prints "The status message is Not Found"

/* 만약 튜플의 몇몇의 값들이 필요하다면 무시하고 싶은 부분들은 _를 사용하면 된다.*/
let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")
// Prints "The status code is 404"

/* 튜플의 각각의 값들을 index로 접근할수 있다.*/
print("The status code is \(http404Error.0)")
// Prints "The status code is 404"
print("The status message is \(http404Error.1)")
// Prints "The status message is Not Found"

/* 튜플 생성할때 튜플의 각각의 요소를 이름을 지정할수 있다.*/
let http200Status = (statusCode: 200, description: "OK")
/* 튜플의 요소들을 이름으로 지정할 경우, 요소들을 지정된 이름으로 사용하여 접근할수 있다.*/
print("The status code is \(http200Status.statusCode)")
// Prints "The status code is 200"
print("The status message is \(http200Status.description)")
// Prints "The status message is OK"

/*
 Tuples은 관련된 값들의 단순한 그룹으로 사용할때 유용하다. 복잡한 데이터의 구조에는 Class 나 Struct에 적합하다.
 */


// - # Optionals # -
/*
 Optionals는 값이 부재일 가능성이 있는 상황이다.
 값이 존재하여 접근하기 위해 optional을 해체하거나 값 자체가 존재할수 없는 경우이다.
 */

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// convertedNumber is inferred to be of type "Int?" or "optional Int"
/*
 값의 타입뒤에 ?가 붙여지는 경우에는 해당 타입과 optional이 포함되는 경우이다.
 */

// - nil -
/* 특정한 값인 nil을 할당하므로 optional의 변수에 값 자체가 없다는것을 의미한다.*/
var serverResponseCode: Int? = 404
// serverResponseCode contains an actual Int value of 404
serverResponseCode = nil
// serverResponseCode now contains no value

/*
 !) optional이 아닌 변수와 상수에는 nil을 사용할수 없다!
 만약 코드안에서 상수와 변수가 특정한 조건에서 값의 부재의 작업이 필요하다면 적절한 타입의 optional을 선언해야한다.
 */

/* optional 변수에 기본갑을 제공하지 않고 생성한다면 그 변수는 자동적으로 nil을 초기화한다. */
var surveyAnswer: String?
// surveyAnswer is automatically set to nil

// - # If Statements and Forced Unwrapping # -

if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}
// Prints "convertedNumber contains some integer value."

if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}
// Prints "convertedNumber has an integer value of 123."
/*
 ! 표현은 optional의 값이 nil이 아닌 확실한 값이 있다는 것을 알기 때문에 강제 해체합니다.
 하지만 optional의 값이 nil이면 runtime error를 일으킵니다.
 */

// - Optional Binding -
/*
 Optional Binding은 if 또는 While 문으로 Optional의 값이 nil이 아닌지 여부를 확인하고 블록 내부의 문에서 해당 값을 상수 혹은 변수로 추출하여 사용합니다.
 if let constantName = someOptional {
    statements
 }
 */

if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" could not be converted to an integer")
}

if let firstNumber = Int("4"), let secondNumber = Int("42"),
   firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}
// Prints "4 < 42 < 100"

if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}
/*
 !) Optional Binding에 생성된 변수와 상수는 if 본문에서만 사용이 가능하다.
 반면 guard에서 생성한 것은 guard문 뒤에서도 사용가능하다.
 */

// - Implictly Unwrapped Optionals -
/*
 Optional의 값이 항상 가지고 있으면 매번 optional의 값을 체크하고 해체하는 경우가 필요하지 않습니다.
 Optional의 타입뒤에 !을 붙이면 됩니다.
 Implictly Unwrapped Optionals는 Optional이 아닌 경우에도 사용할 수 있습니다.
 왜냐하면 매번 값을 해체할 필요가 없기 때문입니다.
 */
let possibleString: String? = "An optional string"
let forcedString = possibleString!
// requires an exclamation point

let assumedString: String! = "An implicitly unwrapped optional string."
let implictString: String = assumedString
// no need for an exclamation point
/*
implicitly unwrapped optional의 값을 사용할때 처음 기존의 optional의 값으로 설정 된다. 하지만 optional 값으로 사용할수 없을때 강제해체가 되어진다.
 위의 예제에서는 implictString이 분명한 optional이 아닌 String이기 때문에 implictString에게 값을 할당하기 전에 assumedString이 강제 해체되어진다.
 아래의 예제에서는 optionalString이 분명한 타입이 아닌 경우이므로 기존의 optional이 된다.
 */
let optionalString = assumedString
// The type of optionalString is "String?" and assumedString isn't force-unwrapped.
/*
 Implicitly unwrapped optional 이 nil이고 그 값을 접근을 한다면 runtime error 가 일으킨다.
 이 결과는 정상적인 optional이 값이 없을때와 같다.
 */
if assumedString != nil {
    print(assumedString!)
}
// Prints "An implicitly unwrapped optional string."
/*
 Optional Binding을 이용할수 있다.
 */
if let definiteString = assumedString {
    print(definiteString)
}
// Prints "An implicitly unwrapped optional string."
/*
 optional이 nil이 될 가능성이 있으면 항상 평범한 Optional을 사용해라. Implicitly unwrapped optional (X)
 */


// - # Error Handling # -
func canThrowAnError() throws {
// this function may or may not throw an error
}
/*
 error를 던질수 있는 함수는 throws 키워드를 사용한다.
 error를 던지는 함수를 호출할때 미리 try 키워드를 사용해야합니다.
 Swift는 자동적으로 에러가 Catch 문에 처리되기 전까지 현재 스코프 밖으로 벗어납니다.
*/
do {
    try canThrowAnError()
    // no error was thrown
} catch {
   // an error was thrown
}

/*
 다른 error의 조건에 반응할수 있도록 사용할수 있는 error handling의 예제입니다.
 */
func makeASandwich() throws {
    // ...
}
/*
do {
    try makeASandwich()
    eatASandwich()
} catch SandwichError.outOfCleanDishes {
    washDishes()
} catch SandwichError.missingIngredients(let ingredients) {
    buyGroceries(ingredients)
}
*/

