/*
 
 Partner 1 Name + Email:
 Partner 2 Name + Email:
 
*/

import Foundation 
/*:
 # Lab 1: Swift Playgrounds
 
 Please refer to the [lab spec](http://iosdecal.com/sp19/lab/lab1/) for further instructions.
 
 ### Problem 1: Swift Warmup
*/
// Implement the following functions:

func tossCoin() -> String {
    let coin = arc4random() % 2;
    if coin == 0 {
        return "Heads";
    }
    else {
        return "Tails";
    }
}

func simulateTosses(numTosses n: Int) -> Int{
    
    var heads = 0;
    for _ in 0..<n {
        let s = tossCoin();
        if s == "Heads" {
            heads = heads + 1;
        }
    }
    return heads;
}

// Uncomment the following lines to run sanity check tests:

tossCoin()  // Should return either "Heads" or "Tails"
simulateTosses(numTosses: 50)   // Should return a number close to 25
/*:
 ### Problem 2: Digits
*/
//Implement the `digits` function:

func digits(_ a: Int) -> [Int] {
    var d: [Int] = [];
    var num = a;
    repeat {
        d.append(num % 10);
        num = num / 10;
    } while (num != 0)
    return d.reversed();
}

// Uncomment the following lines to run sanity check tests:

 digits(123)  // returns [1, 2, 3]
 digits(0)    // returns [0]

/*:
 ### Problem 3: Number Frequency
*/
// Implement the `frequency` function:

func frequency(ofNumbers a: [Int]) ->  [Int: Int] {
    let size = a.count;
    var map: Dictionary = [Int: Int]();
    for i in 0..<size {
        let number = a[i];
        if map[number] != nil {
            let n = map[number]!;
            map[number] = n+1;
        } else {
            map[number] = 1;
        }
    }
    return map;
}

// Uncomment the following lines to run sanity check tests:

frequency(ofNumbers: [3, 1, 2, 3, 2, 1, 2, 3, 2])  // returns "1:2, 2:4, 3:3"
frequency(ofNumbers: [1, 2]) // returns "1:1, 2:1"
frequency(ofNumbers: []) // returns ""

/*:
 ### Problem 4 (Optional): Roman Numerals to Integer
 */
// Implement the `romanToInt` function:

// YOUR CODE HERE

// Uncomment the following lines to run sanity check tests:
/*
 romanToInt("III")      // returns 3
 romanToInt("LVIII")    // returns 58
 romanToInt("MCMXCIV")  // returns 1994
 */
func romanToInt (_ roman: String) -> Int {
    var map: Dictionary = [Int : String]();
    map[1000] = "M";
    map[900] = "CM";
    map[500] = 
}


