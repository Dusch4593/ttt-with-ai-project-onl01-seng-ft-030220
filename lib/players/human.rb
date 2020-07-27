module Players
  class Human < Player
    def move(board)
      print "Select a position on the board (#{self.token}): "
      input = gets.strip
    end
  end
  
end
