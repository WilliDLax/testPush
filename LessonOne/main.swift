//
//  main.swift
//  LessonOne
//
//  Created by Wema Bank on 06/12/2021.
//

import Foundation

print(optionalVars(num1: 3, num2: 4))

//working with arrrays
/*func arrays(){
    var nums: [Int] = [5,6,7,8,9]

    //for num in nums{
    //    print(num)
    //}

    //var index: Int = 0
    //while(index<nums.count){
    //    print(nums[index])
    //    index+=1
    //}


    //nums.removeLast()
    //var last = nums[nums.count-1]
    //print(last)

    //printing only the first 3 elements
    //for i in 0..<nums.count{
    //    print(nums[i])
    //    if(i==2){
    //        break
    //    }
    //}

    var numbers: [Int] = []

    //for(number) in 2...10{
    //    numbers.append(number)
    //}
    //print(numbers)

    //var i = 0
    //var numb: Int = 2
    //while numb < 10{
    //    numbers.append(numb)
    //    numb+=1
    //}
    //print(numbers)

    var names: [String] = []
    names.append("Jarjar")
    names.append("Mary")
    names.append("Kayode")
    names.append("Baga")

    for(index,name) in names.enumerated(){
        print("at index \(index) the name is \(name)")
    }
}*/

//declaring variables and using if and else
/*func basics(){
    var num: Int = 5
    if(num < 10){
        print("Number " + String(num) + " is less than 10")
                        //OR
        print("Number \(num) is less than 10")
    }else{
        print("The number is greater than 10")
    }

    let name: String = "Dave"
    
    if(name == "Dave"){
        print("The name is Dave")
    }else if(name == "Jacob"){
        print("Still a wrong name")
    }else{
        print("Welcome Cliff")
    }

}*/

//Using switch statement
/*func conditionals(){
    var num2: Int = 2
    
    switch(num2){
    case 0:
        print("The number is 0")
    case 1:
        print("The number is 1")
    case 2:
        print("The number is 2")
    default:
        print("The number is \(num2)")
    }
}*/

//Using loops
/*func loops(){
    //(for loops)
    for num in 1...10{
        print(num)
    }
    //The above prints numbers from 1 to 10 inclusive
    //To ommit the limit use two dots and a less than sign
    //for num3 in 1..<10 will print numbers up to 9


    //while loops
    var index: Int = 0
    
    while(index < 10){
        print(index)
        index+=1
    }

    //sentinel looping
    //Getting input from the uer
    print("enter a number: ")
    var num  = readLine()
    
    while(num != "1"){
        print ("You've entered \(String(describing: num))")
        print("Enter 1 to stop the program")
        num = readLine()
    }

    //do-while loops
    var num2 = 10
    repeat{
        print(num2)
    }while(num2>10)
}*/

//non-returning function
/*func printName(name: String, age: Int){
    print("My name is \(name)")
    print("I am \(age) years old")
}*/

//returning function
/*func getName()->String{
    let name: String = "Cliff"
    return name
}*/


//Array exercises

//1.Get all even numbers from an array into a new array
/*func evenAndOdd(){
    var array: [Int] = [4,11,6,21,3,7,2,40,31,16]
    
    print(array)
    print("Even numbers: ")
    print(getEvenNumbers(numberArray: array))
    print("Odd numbers: ")
    print(getOddNumbers(numberArray: array))
    
    func getEvenNumbers(numberArray: [Int]) -> [Int]{
        var evenArray: [Int] = []
        for number in numberArray{
            if(number%2 == 0){
                evenArray.append(number)
            }
        }
        return evenArray
    }
    
    func getOddNumbers(numberArray: [Int]) -> [Int]{
        var oddArray: [Int] = []
        for number in numberArray{
            if(number%2 != 0){
                oddArray.append(number)
            }
        }
        return oddArray
    }
}*/

//2. remove numbers that are divisible by 5
/*func divisible(){
    var array: [Int] = [25, 3, 5, 1, 6, 35, 40, 31, 70]
    var i: Int = 0
    while(i < array.count){
        if(array[i]%5 == 0){
            array.remove(at: i)
        }
        i+=1
    }
    print(array)
}*/

//3. Grade exam scores based on user input
/*0-40 --> F
 41-59 --> C
 60-69 --> B
 70-100--> A*/
/*func grades(){
    let studentScore = prompt()
    checkAndGrade(studentScore: studentScore)
    
    func prompt()->Int{
        print("Enter student score or press -1 to quit:")
        let score = Int(readLine()!)
        return score!
    }
    
    func checkAndGrade(studentScore: Int){
        var score = studentScore
        while(score != -1){
            if(score < 0 && score != -1){
                print("Invalid score")
            }else if(score<=40){
                print("Score of \(score), that's an F")
            }else if(score>40 && score<=59){
                print("Score of \(score), that's a C")
            }else if(score>59 && score<=69){
                print("Score of \(score), that's a B")
            }else if(score>69 && score<=100){
                print("Score of \(score), that's an A")
                print("Congratulations!")
            }else{
                print("Invalid score")
            }
            score = prompt()
        }
        print("Bye!")
    }
}*/

//Optional variables
func optionalVars(num1: Int, num2: Int)->Int{
    var total: Int?
    total = num1 + num2
    
    //unwrap total to a normal int before returning it
    //by assigning it to a new variable which can be the same name
    
    
    //using if let
//    if let total = total {
//        return total
//    }
//    return 0
    
    //using guard let
    guard let total = total else {
        return 0
    }
    
    return total
}
