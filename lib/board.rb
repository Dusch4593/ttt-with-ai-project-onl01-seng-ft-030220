class Board
  attr_accessor :cells

  def initialize
    self.reset!
  end

  

  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end

  def reset!
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def position(input)
    self.cells[input.to_i-1]
  end

  def update(pos, player)
    if !taken?(self.cells[pos.to_i-1])
      self.cells[pos.to_i-1] = player.token
    end
  end

  def full?
    self.cells.all? {|cell| cell == "X" || cell == "O"}
  end

  def turn_count
    self.cells.count {|cell|
      cell == "X" || cell == "O"
    }
  end

  def taken?(position)
    self.cells[position.to_i-1] == "X" || self.cells[position.to_i-1] == "O"
  end

  def valid_move?(position)
    !taken?(position) && position.to_i.between?(1,9)
  end
end
