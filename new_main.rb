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
#TODO refactor this so it isn't the questions at the beginning
    puts "=================="
    puts "Magic 8-Ball"
    puts "=================="
    puts "Ask a question or type quit to Quit"
    print "> "
    question = gets.strip.downcase
    case question
      when "hello magic 8"
        puts '*SECRET CODE WORD USED*'
        puts 'Enter a new answer:'
        new_answer = gets.strip.downcase
        @answers.ans_arr << new_answer
        main_menu

      when 'quit'
        puts "Thank you, come again"
        exit

      else
        puts "QUESTION: '#{question}'"
        puts "ANSWER: #{@answers.ans_arr.shuffle.first}" #sample
        main_menu

      # @answers.get_answer
      # if we want to restate the question we can use "question" to reference
      # puts "takes you to answers"
    
#TODO loop over the entry to see if it matches something already in the ans_arr
#TODO make a second instance of the ans_arr. Make an option to reset to the original ans_arr (hint: arr.clone)
#TODO option to have all answers printed out (# puts @answers.ans_arr)
#TODO use .uniq to get ride of duplicates    
      # @answers.add_answer
    end
  end
  
end


Start.new
# binding.pry
# @start.main_menu

# Start.main_menu