def input_students
  puts "Please enter the name of the students and their cohort."
  puts "To finish, just hit return twice"

  students_hash = {}
  name = gets.chomp
  cohort = gets.chomp

  while !name.empty? do
    students_hash[name] = cohort
    puts "Now we have #{students_hash.size} students"
    name = gets.chomp.to_s
    cohort = gets.chomp
  end
  students_hash
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(students_hash)
  students_hash.each_with_index do |(name, cohort), index|
  index_plus_one = index + 1
    puts "#{index_plus_one}. #{name} (#{cohort} cohort)"
  end
end
def print_footer(students_hash)
  puts "Overall, we have #{students_hash.size} great students"
end

students_hash = input_students
print_header
print(students_hash)
print_footer(students_hash)
