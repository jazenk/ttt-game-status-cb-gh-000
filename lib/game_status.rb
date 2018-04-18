# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS [
#horizontal
[0,1,2],
[3,4,5],
[6,7,8],
#vertical
[0,3,6],
[1,4,7],
[2,5,8],
#diagonal
[0,4,8],
[6,4,2]
]

def won?
  WIN_COMBINATIONS.each do |win_combination|
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]

  if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
  else
      false
  end
  end
end

def full? (board)
  full_board = true
  board.all? do |i|
    if i == " " || i == "" || i == nil
      full_board = false
    end
  end
  full_board
end

def draw? (board)
  if full?(board) == true && won?(board) == false
    return true
  else
    return false
end

def over? (board)
  if won?(board) == true || draw?(board) == true || full?(board) == true
    return true
  else
    return false
end

def winner? (board)
  
end