module Display
    def code_colors(number)
        {
          '1' => "\e[101m  1  \e[0m ",
          '2' => "\e[43m  2  \e[0m ",
          '3' => "\e[44m  3  \e[0m ",
          '4' => "\e[45m  4  \e[0m ",
          '5' => "\e[46m  5  \e[0m ",
          '6' => "\e[41m  6  \e[0m ",
        }[number]
      end
    
      def clue_colors(clue)
        {
          '*' => "\e[91m\u25CF\e[0m ",
          '?' => "\e[37m\u25CB\e[0m "
        }[clue]
      end
    
    def instruction
        puts "You can be code breaker or code maker"
        puts "If you are code breaker you have to guess the color with 4 digit number"
        (1..6).each { |num| print code_colors(num.to_s)}
        puts "then you have to change code according to the clue"
        puts "#{clue_colors("*")} is for correct color and position and #{clue_colors("?")} is for correct color but wrong position"
        puts "if you are code maker you have to make 4 digit code"
    end
end