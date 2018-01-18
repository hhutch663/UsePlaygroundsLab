/*:
 ## App Exercise - Fitness Tracker: Constant or Variable?
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 There are all sorts of things that a fitness tracking app needs to keep track of in order to display the right information to the user. Similar to the last exercise, declare either a constant or a variable for each of the following items, and assign each a sensible value. Be sure to use proper naming conventions.
 
 - Name: The user's name
 - Age: The user's age
 - Number of steps taken today: The number of steps that a user has taken today
 - Goal number of steps: The user's goal for number of steps to take each day
 - Average heart rate: The user's average heart rate over the last 24 hours
 */
let userName = "Bob"
let explanationUserName = "This variable is constant because a person doesn't change their name."
print(explanationUserName)

var age = 64
let explanationAge = "A person's name will change from year to year."
print(explanationAge)

var steps = 3000
let explanationSteps = "Steps will change from day to day."
print(explanationSteps)


var goalSteps = 4500
let explanationGoalSteps = "Over time a person may choose to change their goal for steps so this must be a variable."
print(explanationGoalSteps)


var averageHeartRate = 120
let explanationHeartRate = "A heart rate changes based on how vigorous an exercise may be."
print(explanationHeartRate)








/*:
 Now go back and add a line after each constant or variable declaration. On those lines, print a statement explaining why you chose to declare the piece of information as a constant or variable.
 */
//: [Previous](@previous)  |  page 6 of 10  |  [Next: Exercise - Types and Type Safety](@next)
