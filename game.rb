class Board
    @board = []
    100.times do |i|
        row = []
        @board<<row
    end

    @board.each do |row|
        100.times do |i|
            row<<'0'
        end
    end


    def set_snake
        choice_x = rand(0..99)
        choice_y = rand(0..99)
        board[choice_x][choice_y]=3 
    end

    def set_food
        choice_x = rand(0..99)
        choice_y = rand(0..99)
        if(board[choice_x][choice_y] == 1)
            set_food
        else 
            board[choice_x][choice_y] = 2
        end
    end
     
     
    def update(snake)
        if board[@head_x][@head_y]==1
            puts "Don't be a cannibal, bro." 
            return 
        end
         
        if board[@head_x][@head_y] == 2
            length += 1
        end
         
        if dir=='l'
            board[@head_x][@head_y - 1] = 3
           
        elsif dir == 'r'
            board[@head_x][@head_y + 1] = 3
         
        elsif dir == 'u'
            board[@head_x - 1][@head_y] = 3   # (y) 
         
        elsif dir == 'd'
            board[@head_x + 1][@head_y] = 3
        end
         
        board[@tail_x][@tail_y] = 0
    end
end
       
class Snake
    @turn_pts_x = [50]
    @turn_pts_y = [50]
    @dir = 'u'
    @head_x = 50 
    @head_y = 50 
    @tail_x = 50
    @tail_y = 51
    @length = 2
    def update_turn
       turn_pts_x << @head_x
       turn_pts_y << @head_y
       end
    def turn_right                                                                                        
        dir = 'r'
        update_turn                                                                   
        end
    def go_up                                   
        dir = 'u'
        update_turn
        end
    def go_down
        dir = 'd'
        update_turn
        end
    def turn_left
        dir = 'l'
        update_turn      
        end
end    

board = Board.new()
snake = Snake.new()