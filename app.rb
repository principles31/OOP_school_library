require './person'
require './classroom'
require './book'
require './rental'
require './student'
require './teacher'

# rubocop:disable Metrics/ClassLength, Metrics/CyclomaticComplexity

class App
  def initialize
    @people = []
    @books = []
    @all_rentals = []
  end

  def menu_options
    puts '1: List All Books'
    puts '2: List All People'
    puts '3: Create A Person'
    puts '4: Create A Book'
    puts '5: Create A Rental'
    puts '6: List All Rentals For A Given Person ID'
    puts '7: Exit The Program'
  end

  def run
    puts 'Welcome to the book store'
    option = nil
    while option != 7
      puts 'Please enter a number to choose an option: '
      menu_options
      print '(Option number): '
      option = gets.chomp.strip.to_i
      choice_options(option)
      puts
    end
    puts ' Closing Application '
    puts '      Good Bye!      '
  end

  def choice_options(option)
    case option
    when 1
      all_books
    when 2
      all_people
    when 3
      create_person
    when 4
      create_book
    when 5
      create_rental
    when 6
      list_rentals
    when 7
      nil
    else
      puts 'Invalid option! '
      puts 'Please enter a valid option from the following: '
      menu_options
    end
  end

  def create_person
    entry = nil
    print 'Choose option 1 to create a Student or option 2 for a Teacher: '
    until [1, 2].include?(entry)
      entry = gets.chomp.strip.to_i
      puts
      puts 'Choose option 1 for Student or option 2 for Teacher' unless [1, 2].include?(entry)
    end
    case entry
    when 1
      create_student
    when 2
      create_teacher
    end
  end

  def all_people
    key = 1
    puts
    puts 'People'.upcase
    puts
    puts 'No people yet! Choose option 3 to add a person ' if @people.empty?
    @people.each do |person|
      print "#{key} - [#{person.class.name} ID]: #{person.id} Age: #{person.age} Name: #{person.name} "
      print "Parent Permission: #{person.parent_permission}" if person.is_a?(Student)
      print "Specialization: #{person.specialization}" if person.is_a?(Teacher)
      puts
      key += 1
    end
  end
