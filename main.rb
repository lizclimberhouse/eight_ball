require 'pry'
require_relative 'answers'

class Start

  attr_accessor :answers
  attr_accessor :ans_arr # :answers is same as @answers

  def initialize #runs when you call start on the class
    
    @answers = Answers.new
    main_menu
  end
# .self =>
# not self => 
  def main_menu
    puts "Magic 8-Ball"
    puts "=================="
    puts "Would you like to:"
    puts "1) Ask a question"
    #puts "2) Add an answer to the list"
    puts "3) Quit"
    choice = gets.strip.downcase
    case choice
    when "1"
      puts "Ask a question"
      question = gets.strip #not doing anything with the variable
      # binding.pry
      # @answers.get_answer
      puts "#{@answers.ans_arr.shuffle.first}" #sample
      main_menu
      # if we want to restate the question we can use "question" to reference
      # puts "takes you to answers"
    when "hello magic 8"
      puts 'Enter a new answer'
      new_answer = gets.strip
      @answers.ans_arr << new_answer
      main_menu
      # @answers.add_answer
      # puts "takes you to add answers"
      #puts @answers.ans_arr
    when "3"
      puts "Thank you, come again"
      exit
    else
      puts "Invalid entry"
      main_menu
    end
  end
  
end


Start.new
# binding.pry
# @start.main_menu

# Start.main_menu