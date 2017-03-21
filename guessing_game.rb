#have a random number for user to guess

# puts"" for a number between 1 and 100
#gets "" a prompt for the number

#if users guess is less than the program number it should
#  tell the user that their guess was low and let guess again

  # ig users guess is greater than the program number it
  #  should tell you that you were high and let guess again
  #
  #  if the guess is correct the program should tell the user
  #    that they win and then quit
  #
  #    after 5 incorrect guesses the program should say
  #    you lose



def ask_for_number
  print "Would you like to play a game? if yes enter a number if no, go away "
  answer = gets.chomp.to_i
  answer
end

def guessing
  guess_count = 1
  # random_number = rand(101) + 1
  random_number = 3
  guess = ask_for_number
  while guess_count < 5

      if guess < random_number
        puts " your number is less than my number, try again
        or don't it's fine either way. "
        guess = ask_for_number
      elsif guess > random_number
        puts " your number is greater than my number, are you even
        trying? "
        guess = ask_for_number
      else
        break
      end

      guess_count += 1
    end

      if guess == random_number
        puts "You Win congrats! you probably cheated but im only a program
        not the ehtical gaming commitee"
      else
        puts "YOU LOSE, Forever. "
      end
end

guessing
