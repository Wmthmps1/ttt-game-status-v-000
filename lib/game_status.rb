# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],   #top row
  [3,4,5],   #middle row
  [6,7,8],   #bottom row
  [0,3,6],   #first column
  [1,4,7],   #second column
  [2,5,8],   #third column
  [0,4,8],   #diagonaly
  [6,4,2]    #diagonaly
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
   win_index_1=win_combination[0]
   win_index_2=win_combination[1]
   win_index_3=win_combination[2]
   position_1=board[win_index_1]
   position_2=board[win_index_2]
   position_3=board[win_index_3]
   if position_1 == "X" && position_2 == "X" && position_3 == "X"
     return win_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
     return win_combination
   end
  end
  return false
end

def full?(board)
board.none?{|position| position == (" ")}
end

def draw?(board)
  won?(board)
  full?(board)
  if won?(board) == false && full?(board) == true
    return true
  else
    return false
 end
end

def over?(board)
won?(board)
full?(board)
if won?(board) != false or full?(board) == true
  return true
else
  return false
end
end

def winner(board)
  WIN_COMBINATIONS.each do |win_combination|
   win_index_1=win_combination[0]
   win_index_2=win_combination[1]
   win_index_3=win_combination[2]
   position_1=board[win_index_1]
   position_2=board[win_index_2]
   position_3=board[win_index_3]
   if position_1 == "X" && position_2 == "X" && position_3 == "X"
     return "X"
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
     return "O"
   end
  end
  return nil
end
