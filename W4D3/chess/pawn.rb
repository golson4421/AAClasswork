require "piece.rb"

    # def initialize(color, board, pos)
    #     @color = color
    #     @board = board
    #     @pos = pos
    # end
    
class Pawn < Piece

    def symbol
        return ♟
    end

    def move_dirs
        #      white     @grid[1][0]
        #    valid move =@grid[2][0]
        # invalid move = @grid[0][0]
        # invalid move = @grid[1][2]

        # black pawn     @grid[6][0]
        # black pawn move@grid[5][0]
    end

    private

    @pos[x][y]
    if pawn.color == white && @pos[1]
    # def start_rows
    #     if pawn(white)
    #         start_row = row[1][x]
    #     else
    #         start_row = row[6][x]
    #     end
    # end

    # def at_start_row?
    #     white?(start_row)
    # end
    end

    def forward_dir
        ♙ ♟ 👑
        if white pawn
            [x][y]
            [x + 1][y]
        else
            [x - 1][y]
        end
    end
    
    def foward_steps
    end

    def side_attacks
        if white pawn attacking piece
            [x + 1][y - 1 || y + 1]
  

end
