class Snake
    @turn_pts_x = [50]
    @turn_pts_y = [50]
    @dir = 'u'
    @head_x = 50 
    @head_y = 50 
    @tail_x = 50
    @tail_y = 51
    @flag1 = false
    @flag2 = false
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