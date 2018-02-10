

class Answers

  attr_accessor :ans_arr

  def initialize

  @ans_arr = [
    'You cant handle the truth',
    'Yea',
    'Nay',
    'Does a bear shit in the woods?',
    'If it helps you sleep at night',
    'Dont ask that right now, maybe later',
    'Surely you jest',
    "...Searching...\nAsk again",
    'I wouldnt bet on it',
    'Dont hold your breath',
    'Most certainly',
    'Ask the cat'
  ]
end

  # def self.get_answer
  #   puts @ans_arr.shuffle.first
  # end

  # def self.add_answer
  #   puts 'Enter a new answer'
  #   new_answer = gets.strip
  #   @ans_arr << new_answer
  #   @start.main_menu
  # end
end