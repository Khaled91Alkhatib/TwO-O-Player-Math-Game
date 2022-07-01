class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lost_life
    @lives -=1
  end

  def no_lives
    @lives == 0
  end

  def new_question
    new_question = Question.new
    new_question.ask_question(name)
    print '> '
    @userinput = $stdin.gets.chomp
    if new_question.check_answer?(@userinput.to_i)
      puts "Yes you are correct!"
    else 
      puts "No  that's not correct!"
      lost_life
    end
  end
end