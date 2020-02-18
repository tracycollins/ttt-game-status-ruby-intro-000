# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def empty_board?(board)
  board.all? do |position|
    position != "X" && position != "O"
  end
end

def winner?(board, player)
  WIN_COMBINATIONS.any? do |combination|
    combination.all? { |index| board[index] == player}
  end
end

def won?(board)
  if empty_board?(board)
    return false
  end
end
