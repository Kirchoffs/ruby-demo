require 'grid'

class DistanceGrid < Grid
    attr_accessor :distances

    def contents_of(cell)
        if distances && distances[cell]
            distances[cell].to_s(36)
        else
            super
        end
    end

    def distances_bfs(row, col)
        start = self[row, col]
        @distances = start.distances_bfs
    end
end
