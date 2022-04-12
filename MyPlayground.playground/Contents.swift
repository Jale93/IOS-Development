import UIKit

// program that prints your best friend's name.
var myBestFriendname = "Natavan"
print("My best friend name is: \(myBestFriendname)")
// ************************************************

// program that prints your name and your address in different lines.
let myName = "Zhala"
var myAddress = "Baku, Azerbaijan"
print("My name: \(myName)")
print("My address: \(myAddress)")

/*program that randomly select a number between 10 to 20.Print the division
by 4 of the number.
 */
var number = Int.random(in: 10..<20)
let resultDivision = number / 4
print("Number is: \(number)")
print("Result: \(resultDivision)")

/*Write a program that randomly select a number between 0 to 100 to variable x and
 prints:
 a. a number smaller by 22
 b. a number bigger by 22
 c. the reminder of the division by 2
 */
var x = Int.random(in: 0..<100)
if x < 22 {
    print("\(x) is smaller than 22")
}else{
    print("\(x) is bigger than 22")
}
let resultReminder = x % 2
print("the reminder of the division by 2: \(resultReminder)")

/*
 Write a program that randomly select 3 numbers between 0 to 100 to x,y and z and
 prints their sum
 */
var x_ = Int.random(in: 0..<100)
var y_ = Int.random(in: 0..<100)
var z_ = Int.random(in: 0..<100)

let sum = x_ + y_ + z_
print("x_ : \(x_)")
print("y_ : \(y_)")
print("z_ : \(z_)")
print("Sum of x_,y_,z_ : \(sum)")
