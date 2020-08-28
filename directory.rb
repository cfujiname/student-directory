@students = [] # variable (this case empty array) outside methods will be accessible in all methods
def input_students
  puts "Please enter the name of the students"
  puts "To finish, just hit return twice"

  students = []

  name = gets.chomp

  while !name.empty? do
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    name = gets.chomp
  end
  students
end

def interactive_menu
  students = []
  loop do
    print_menu
    process(gets.chomp) # user selection passed as argument to method
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "9. Exit"
end

def show_students
  print_header
  print_students_list
  print_footer
end

def save_students
  # open the file for writing
  file = File.open("students.csv", "w") # second argument means 'write'
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]] # creating and array from hash, where elements are string
    csv_line = student_data.join(",") # joining the elements using comma separator
    file.puts csv_line # writes in the file, not on the screen
  end
  file.close # closing file - once open, always close
end

def process(selection)
  case selection
    when "1"
      input_students
    when  "2"
      show_students
    when "3"
      save_students
    when  "9"
      exit #this terminates the program
    else
      puts "I don't know what you meant, try again"
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_students_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end



interactive_menu
