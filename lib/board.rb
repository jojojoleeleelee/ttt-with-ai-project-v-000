class Board
  attr_accessor :cells

  def initialize
    reset!
  end

  def reset!
    @cells = Array.new(9, " ")
  end

  def display
    puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
    puts "-----------"
    puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
    puts "-----------"
    puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
  end

  def position(input)
    cells[input.to_i-1]
  end

  def full?
    if cells.detect {|c| c == " " || c == ""}
      false
    else
      true
    end
  end

  def turn_count
    cell_count = cells.select {|c| c == "X" || c == "O"}
    cell_count.size
  end

  def taken?(input)
    if cells[input.to_i-1] == " " || cells[input.to_i-1] == ""
      false
    else
      true
    end
  end

  def valid_move?(input)
    if (input.to_i == [1..9]) && !taken?
      true
    else
     false
    end
  end

  def update(input, player)
    cells[input.to_i-1] = player.token
  end
end
