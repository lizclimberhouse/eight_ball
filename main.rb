require 'pry'
require_relative 'answers'

class Start

  #attr_accessor

  def initialize #runs when you call start on the class
    
    @answers = Answers.new

  end

  def self.main_menu
    puts "Magic 8-Ball"
    puts "=================="
    puts "Would you like to:"
    puts "1) Ask a question"
    puts "2) Add an answer to the list"
    puts "3) Quit"
    choice = gets.strip
    case choice
    when "1"
      puts "Ask a question"
      question = gets.strip #not doing anything with the variable
      # binding.pry
      @answers.get_answer
      # if we want to restate the question we can use "question" to reference
      # puts "takes you to answers"
    when "2"
      @answers.add_answer
      # puts "takes you to add answers"
    when "3"
      puts "Come again"
      exit
    else
      puts "Invalid entry"
      @start.main_menu
    end
  end
  
end


# @start = Start.new

# @start.main_menu

Start.main_menu