class Universe
    @@planet =[
        [0,0,0,0],
        [0,0,0,0],
        [0,0,1,0],
        [0,0,0,0]]
    def see_planet(a,b)
        @@planet[a][b]
    end            
    def get_planet(live,a,b)
        @@planet[a][b] = live
    end
    
        
end

class Life
    @@u = Universe.new
    @@north = 0
    @@south = 0
    @@east = 0
    @@west = 0
    def get_live(new_life)
        @@new_life = new_life
    end
    def self.get_neighbors(north,south,east,west)
        @@north = north
        @@south = south
        @@east = east
        @@west = west
    end
    
    def life_in_corners(a,b)
        neighbors = Life.new
        if a == 0 && b == 0
            neighbors.get_neighbors(@@u.see_planet(3,0),@@u.see_planet(1,0),@@u.see_planet(0,1),@@u.see_planet(0,3))
            puts neighbors.get_neighbors
        end
    end
    def life_exists(a,b)

    end

    def print_planet(a,b)
        
        puts @@u.see_planet(a,b)
    end

end

li =Life.new
li.life_in_corners(0,0)

