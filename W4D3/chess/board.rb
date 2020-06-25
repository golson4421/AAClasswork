class Board

    # WHITE = [Piece.new(white, self, [0, 0])]

    def initialize
        @grid = Array.new(8) { Array.new(8) }
    end


    def [](pos)
        row, col = pos[0], pos[1]
        @grid[row][col]
    end

    def []=(pos, value)  #[0,0], :R
        row, col = pos[0], pos[1]
        @grid[row][col] = value
    end

    def valid_pos?(start_pos, end_pos)
        start_pos[0] >= 0 && (start_pos[1] < 8 && start_pos[1] >= 0) && end_pos[0] >= 0 && (end_pos[1] < 8 && end_pos[1] >= 0)
    end
                    
    def move_piece(start_pos, end_pos)
       if valid_pos?(start_pos, end_pos)
        #nil                 :Henry  [] 
        @grid[end_pos[0]][end_pos[1]] = @grid[start_pos[0]][start_pos[1]]
        @grid[start_pos[0]][start_pos[1]] = nil
       else
        raise 'That is not a valid position'
       end
       if @grid[start_pos[0]][start_pos[1]] == nil
        raise 'There is no piece there'
       end
    end

    

    # @grid[] = Piece.new(white,self, [0, 0])
end

