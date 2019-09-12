import UIKit

var str = "Hello, playground"
print(str)

let array = [1, 2, 3, 2, 3, 4, 5 ,4, 3, 2]
let filterArray = array.filter({return $0 == 3})
print(filterArray)

let mArray = [1, 2, 3, 4]
let mapArray = mArray.map({ return $0 * 2})
print(mapArray)

let rArray = [1, 2, 3, 4,]
let reduceArray = rArray.reduce(0, {sum, number in sum + number})
print(reduceArray)



struct Person {

    var name: String
    var age: Int
}

let personArray = [

    Person(name: "iOS", age: 20),
    Person(name: "Apple", age: 21),
    Person(name: "iPhone", age: 15),
    Person(name: "iPod", age: 16),
    Person(name: "iMac", age: 20)

]


let first = Dictionary(grouping: personArray) { (per) -> Character in
    return per.name.first!
}
print(first)

var groupPeople = [[Person]]()

let keys = first.keys.sorted()
print(keys)

keys.forEach { (key) in
    groupPeople.append(first[key]!)
}

print(groupPeople)

// PAlindrum
let train = "iOi Pop and iPhPi anna and anna iPhiP iOSASOi kivik 909"

func checkPalin(str: String) {
    
    var result = [String: Int]()
    
    let count = train.components(separatedBy: " ")
  
    count.forEach { (val) in
        
        if checkPalindrum(str: val) {
            let cnt = result[val] ?? 0
            result[val] = cnt + 1
            print("Palin: ", val)
        }
    }
    
    print(result)
}


func checkPalindrum(str: String) -> Bool {
    
    
    let countArr = Array(str)
    var current = 0
    while current < countArr.count / 2 {
        
        if countArr[current] != countArr[countArr.count - current - 1]  {
            
            return false
        }
        current += 1
    }
    
    
    
    return true
    
}

checkPalin(str: train)

//Fibo

func dibNumbers(numSteps: Int) -> [Int] {
    
    var sequence = [0,1]
    
    if numSteps <= 1 {
        return sequence
    }
    
    for _ in 0...numSteps - 2 {
        
        let first = sequence[sequence.count - 2]
        let second = sequence[sequence.count - 1]
        
        sequence.append(first + second)
    }
    
  return sequence
}

print(dibNumbers(numSteps: 10))


func fibNew(num: Int, first: Int, second: Int) -> [Int] {
    
    if num == 0 {
        return []
    }
    print(num)
    return [first + second] + fibNew(num: num - 1, first: second, second: first + second)
}

print(fibNew(num: 9, first: 0, second: 1))



class A {
    
}

class B {

}

class C {
    
    
}

class D: A, B {
    
}
