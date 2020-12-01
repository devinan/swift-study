// # Collection Types
/*
 1. Arrays 2. Sets 3. Dictionaries
 array는 순서가 있는 값들의 집합
 Sets는 순서가 없는 개별적인 값들의 집합
 Dictionaries는 순서가 없는 key:Value의 집합
 */

// - # Arrays # -
/* Array<Elements> ==> [Element]*/

// - Creating an Empty Array -

var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.")
// prints "someInts is of type [Int] with 0 items."

/*
 만약 타입의 정보가 충분히 제공되어졌다면 빈 array를 작성할때 []로써 작성하면 된다.
 */
someInts.append(3)
someInts = []
// someInts is now an empty array, but is still of type [Int]

// - Creating an Array with a Default Value
/* swift Array 타입은 똑같은 기본값을 세팅하면 특정한 사이즈를 생성할수 있는 초기화를 제공하기도 한다.*/
var threeDoubles = Array(repeating: 0.0, count: 3)
// threeDoubles is of type [Double], and equals [0.0, 0.0, 0.0]

// - Creating an Array by Adding Two Arrays Together -
/* 기존에 호한이 되는 두가지의 배열을 + 연산자를 이용해서 새로운 배열을 만들수 있다.
새로운 배열의 타입은 두개의 배열의 타입으로 추론될 수 있다. */
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
var sixDoubles = threeDoubles + anotherThreeDoubles
// sixDoubles is inferred as [Double], and equals [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]

// - Creating an Array with an Array Literal -
var shoppingList: [String] = ["Eggs", "Milk"]
// shoppingList has been initialized with two initial items

/*
 스위프트의 타입 추론 덕분에 배열을 생성할때 타입을 지정하지 않아도 된다.
 */
var shoppingList2 = ["Egg", "Milk"]

// - Accessing and Modifying an Array -
/* Array를 접근하거나 수정하기 위해서 method나 properties를 사용한다. */

/* array의 item의 숫자를 알아내기 위해서는 오로지 읽기 기능인 count property를 사용하면 된다.*/
print("The shopping list contains \(shoppingList.count) items.")
// Prints "The shopping list contains 2 items."

/* Boolean isEmpty 프로퍼티는 count 프로퍼티가 0인지 체크하기 위한 단축어이다. */
if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list is not empty.")
}

/* 배열의 끝에 append 메소드로 새로운 item을 더할수 있다. */
shoppingList.append("Flour")
// shoppingList now contains 3 items, and someone is making pancakes

shoppingList += ["Baking Powder"]

shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

/* 배열의 값을 접근하기 위해서는 배열의 index의 number를 이용하면 된다.*/
var firstItem = shoppingList[0]
// firstItme is equal to "Eggs"

shoppingList[0] = "Six eggs"
// the first Item in the list is now equal to "Six eggs" rather than "Eggs"

shoppingList
shoppingList[4...6] = ["Banans", "Apples"]

// insert(_:at) 메소드는 index의 지정위치에 새로운 아이템을 추가할 수 있습니다.
shoppingList.insert("Maple Syrup", at: 0)
// shoppingList now contains 7 items
// "Maple Syrup" is now the first item in the list

/*
 배열에서 아이템을 제거하기 위해서는 remove(at:) 메소드를 사용할 수 있습니다.
 지정된 인데스에서 아이템을 제거합니다. 그리고 제거된 아이템을 반환합니다.
*/
let mapleSyrup = shoppingList.remove(at: 0)

/*
 배열에서 마지막 아이템을 제거하기를 원한다면 removeLast()를 사용해라.
 */
let apples = shoppingList.removeLast()

// - Iterating Over an Array -

for item in shoppingList {
    print(item)
}

/*
 반복문에 배열의 아이템의 값과 인덱스를 같이 요구한다면 enumerated() 메소드를 사용하세요.
 반환하는 결과는 인덱스의 정수형과 아이템읙 값의 튜플 형태입니다.
 */
for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}


// - # Sets # -
/* Sets은 똑같은 타입을 지닌 구별되는 값들의 집합입니다. 집합안에 값들은 순서가 없습니다.
 아이템의 순서가 필요 없거나 아이템을 한번만 쓸 경우에는 Set이 적절합니다.
 */

// - Set Type Syntax -
/* Set<Element> Element는 Set이 저장하는 값들의 타입이다. 배열과 달리 단축어가 없다.*/

// - Creating and Initializing an Empty Set -
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")
// Prints "letters is of type Set<Character> with 0 items."

/*
 만약 타입의 정보가 충분히 제공된다면 빈 Set을 생성하기 위해 빈 배열의 문자열을 작성하면 된다.
 */
letters.insert("a")
// letters now contains 1 value of type Character
letters = []
// letters is now an empty set, but is still of type Set<Character>

// - Creating a Set with an Array Literal -
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]

/*
 set type은 배열의 리터럴 문자 하나로만 추론이 가능하지 않다. 그래서 Set은 분명하게 명시해야한다.
 하지만 스위프트의 타입 추론 영향으로 배열의 리터럴 문자안에 값이 하나 존재한다면 Set Element을 작성하지 않아도 된다.
 */
var favoriteGenres2: Set = ["Rock", "Classical", "Hip hop"]

// - Accessing and Modifying a Set -
/* Set를 접근하거나 수정하기 위해서 method나 properties를 사용한다. */

/* Set의 item의 숫자를 알아내기 위해서는 오로지 읽기 기능인 count property를 사용하면 된다.*/
print("I have \(favoriteGenres.count) favorite music genres.")
// Prints "I have 3 favorite music genres."

if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}
// Prints "I have particular music preferences."

/* 새로운 item을 추가하기 위해서는 insert(_:) 메소드를 사용한다.*/
favoriteGenres.insert("Jazz")

/* Set에 특정한 item이 포함되어 있는지 체크하려면 contains(_:) 메소드를 사용하자. */
if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
}else {
    print("It's too funky in here.")
}
// Prints "It's too funky in here."

// - Iterating Over a Set -
for genre in favoriteGenres {
    print("\(genre)")
}

/* Swift Set 타입은 순서가 없다. 특정한 순서에서 Set의 값들을 반복하려면 sorted() 메소드를 사용하자.*/
for genre in favoriteGenres.sorted() {
    print("\(genre)")
}


// - # Performing Set Operations # -

/* 수학의 집합 부분이다. 공식문서로 통해 메소드를 확인하자. */


// - # Dictionaries -
/*
 Dictionary는 관련성있는 똑같은 타입을 지닌 key와 똑같은 타입을 지닌 value 들의 순서가 없는 집합이다.
 */

// - Dictionary Type Shorthand Syntax -
/* Swift Dictionary 타입은 Dictionary<Key, Value> 로 작성한다. 단축어는 [Key: Value] 이다.*/

// - Creating a Empty Dictionary -
var namesOfIntegers = [Int: String]()
// namesOfIntegers 는 빈 [Int: String] Dictionary이다.

/* 만약 충분한 타입의 정보가 제공된다면 너는 빈 Dictionary를 작성할 때 [:]로 작성하면 된다.*/
namesOfIntegers[16] = "sixteen"
// namesOfIntegers now contains 1 key-value pair
namesOfIntegers = [:]
// namesOfIntegers is once again an empty dictionary of type [Int: String]

// - Creating a Dictionary with a Dictionary Literal -
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

/* 스위프트의 타입 추론 덕분에 타입의 정보를 작성할 필요가 없다.*/

// - Accessing and Modifying a Dictionary -

print("The airports dictionary contains \(airports.count) items.")
// Prints "The airports dictionary contains 2 items."

/* 특정한 키의 값을 설정하거나 업데이트를 하려면 updateValue(_:forKey:) 메소드를 사용하자.
 만약 특정 키가 Dictionary에 없다면 특정 키에 대한 값을 설정한다. 그리고 특정 키가 이미 존재한다면 값을 업데이트 한다.
 이 메소드는 업데이트를 수행한 후에 기존의 값(오래된)을 반환합니다. 반환타입은 optional입니다.
 */
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}
// Prints "The old value for DUB was Dublin."

/* 특정 키의 값을 접근하기 위해서는 optional Binding를 이용하자. */
if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport is not in the airports dictionary.")
}
// Prints "The name of the airport is Dublin Airport."

/* 특정 key-value 쌍을 제거하기 위해서는 key에 대한 값을 nil로 설정하자. */
airports["APL"] = "Apple International"
// "Apple International" is not the real airport for APL, so delete it.
airports["APL"] = nil
// APL has now been removed from the dictionary

/* 특정 key-value를 제거하기 위해서는 removeValue(forKey:) 메소드를 사용하자.*/
if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue)")
} else {
    print("The airports dictionary does not contain a value for DUB.")
}
// Prints "The removed airport's name is Dublin Airport."

// - Iterating Over a Dictionary -
for (airPortCode, airportName) in airports {
    print("\(airPortCode): \(airportName)")
}

for airportcode in airports.keys {
    print("Airport code: \(airportcode)")
}

for airportName in airports.values {
    print("Airport name: \(airportName)")
}

/* 만약 Dictionary의 key 혹은 value들을 배열로 생성하려면 keys 와 values의 프로퍼티를 가진 새로운 배열을 생성하면 된다.*/
let airportCodes = [String](airports.keys)

let airportNames = [String](airports.values)
