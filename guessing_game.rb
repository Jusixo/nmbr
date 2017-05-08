def ask_for_number
  print "Would you like to play a game? if yes enter a number if no, go away "
  answer = gets.chomp.to_i
  answer

end
numbers = []


def guessing
  guess_count = 1
  random_number = rand(101) + 1
  guess = ask_for_number
  while guess_count < 5


      if guess < random_number
        puts " your number is less than my number, try again
        or don't it's fine either way. "
        guess = ask_for_number
        numbers << answer
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



if numbers.include?(@answer)
  puts "please do not repeat after me"
end


  guessing
