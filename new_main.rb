require 'pry'
require_relative 'answers'

class Start

  attr_accessor :answers # :answers is same as @answers
  attr_accessor :ans_arr 

  def initialize #runs when you call start on the class at the bottom
    
    @answers = Answers.new
    @add_answers = Answers.new
    main_menu
  end

  def main_menu
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
        @add_answers.ans_arr.each do |ans|
          if ans.downcase === new_answer
            main_menu
          else
          end
        end            
        @add_answers.ans_arr << new_answer

      when 'reset'
        puts "You choose to re-set the answers"
        @add_answers = @answers
      when 'print'
        puts "You choose to print all the answers"
        puts "ANSWERS ARE: " 
        @add_answers.ans_arr.each do |ans|
          puts "#{ans}" 
        end
      when 'quit'
        puts "Thank you, come again"
        exit
      else
        puts "QUESTION: '#{question}'"
        puts "ANSWER: #{@add_answers.ans_arr.shuffle.first}" #sample
    end
    main_menu
  end
end


Start.new
# binding.pry
# @start.main_menu

# Start.main_menu