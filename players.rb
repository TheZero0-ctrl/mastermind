class Player
    attr_accessor :role
    def initialize()
    end
end

class ComputerPlayer < Player
    def code
        code = []
        (1..4).each {|num| code<<rand(1..6)}
        return code
    end
    def provide_clue(code,guess)
        clue = []
        editable_code = code.clone
        guess.each_with_index do |single,i|
            if single == code[i].to_s
                clue << '*'
                editable_code[i] = "*"
            end
        end
        guess.each do |single|
            if editable_code.include?(single.to_i)

                clue << "?"
                editable_code.each_with_index do |a,i|
                    if single.to_i == a
                        editable_code.delete_at(i)
                        editable_code[i] = "?"
                        break
                    end
                end
            end
        end
        return clue
    end

end

class HumanPlayer < Player
    def code
        puts "enter your four digit code"
        @code = gets.chomp.split("")
        return code
    end

    def guess
            puts "Guess the code"
            return gets.chomp.split("")
    end
end
