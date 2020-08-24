#3 changing the number of students into variable (refactoring)
student_count = 11
#1 putsing the list of students
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]# students are put in an array to make it easier to use the code afterwards
# iteration so no need to manually puts all the elements of array
puts "The students of Villains Academy"
puts "-------------"
students.each do |student|
  puts student
end
#2 printing the total number of students
puts "Overall, we have #{student_count} great students"
#2 print() does NOT add a new line characters
#4 refactoring the last sentence with string interpolation, from print blabla print blabla to line above
