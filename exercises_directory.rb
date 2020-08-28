def input_students
  puts "Please enter the name of the students, their cohort, country of birth and hobby"
  puts "To finish, just hit return 4 times"

  students_hash = {}
  name = gets.chomp
  cohort = gets.chomp

  while !name.empty? do
    students_hash[name] = cohort
    puts "Now we have #{students_hash.size} students"
    name = gets.chomp
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

def print_initial(students_hash)
  puts "Enter an initial to filter the students"
  letter = gets.chomp.to_s
  students_hash_initial_arr = students_hash.keys
  puts "These students have their names beginning with #{letter}: #{students_hash_initial_arr.select {|name| name.start_with?(letter)}}"
end

def print_max12(students_hash)
  students_hash_initial_arr = students_hash.keys
  puts "These students: #{students_hash_initial_arr.select {|name| name.length < 12}} have names shorter than 12 characters"
end

#def print_hobby_country(students_hash)
#  students_hash.each do |key, value|
#    puts "#{name}'s country of birth is #{country} and loves #{hobby}"
#  end
#end

def print_footer(students_hash)
  puts "Overall, we have #{students_hash.size} great students"
end

students_hash = input_students
print_header
print(students_hash)
print_initial(students_hash)
print_max12(students_hash)
print_hobby_country(students_hash)
print_footer(students_hash)
