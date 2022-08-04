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
