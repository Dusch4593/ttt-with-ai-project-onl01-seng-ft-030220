module Players
  class Computer < Player
    def move(board)
      move = [1,2,3,4,5,6,7,8,9].detect {|i| !board.taken?(i.to_s)}
      move.to_s if board.valid_move?(move)
    end
  end
end
