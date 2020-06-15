class Universe
    @@planet = [
        [0,0,0,0],
        [0,0,0,0],
        [0,0,0,0],
        [0,0,0,0]
    ]
    @@life_north = 0
    @@life_south = 0
    @@life_east = 0
    @@life_west = 0
    
    def self.getlife_or_dead(live,x,y)
        @@planet[x,y] = live
    end
    
    def self.get_neighborhood(north,south,west,east)
        @@life_north = north
        @@life_south = south
        @@life_west = west
        @@life_east = east
    end
    
end

class Existence
    new_universe = Universe.new
    def life_exists(x,y)
        new_universe.get_neighborhood()
        

        end
    end
    
    def life_west_east_side(x)
        if x == 0

        elsif x == 3

        end
    end
    
    def life_north_southside(y)
        if y == 0

        elsif y == 3

        end    
    end

    def Life_corners(x,y)
        if x == 0 && y == 0

        elsif x == 0 && y == 1
        
        elsif x == 1 && y == 0

        elsif x == 1 && y == 1

        end
    end

    def new_life
        for i in 0..3
            for o in 0..3
                @@planet[i][o]
        
         
            end
        end    
    end
end
