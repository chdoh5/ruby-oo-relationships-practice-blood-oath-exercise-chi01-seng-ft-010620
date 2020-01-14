class Cult 
    attr_accessor :name, :location, :founding_year, :slogan, :follower, :name_of_cult, :location_of_cult, :year

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name 
        @location = location
        @founding_year = founding_year
        @slogan = slogan

        @@all << self

    end

    def recruit_follower(follower)
        @follower = follower

        BloodOath.new(self, follower)
    end

    def cult_population
        BloodOath.all.select {|f| f.cult == self}.count
    end 

    def followers
        i = BloodOath.all.select do |o|
            o.cult == self
        end
        i.map {|x| x.follower.name}
    end 

    def average_age
        i =BloodOath.all.select{|oath| oath.cult == self}
        ages = i.map{|x| x.follower.age}
        sum = ages.sum
        (sum/(ages.count).to_f).round(2)
    end 

    def self.find_by_name(name_of_cult)
        @name_of_cult = name_of_cult

        Cult.all.find {|cult| cult.name == name_of_cult
        cult}
    end

    def self.find_by_location(location_of_cult)
        @location_of_cult = location_of_cult

        Cult.all.select do |cult| if cult.location == location_of_cult
         p cult.name
        end
    end
    end

    def self.find_by_founding_year(year)
        @year = year

        Cult.all.select do |c| if c.founding_year == year
            p c.name
        end
        end
    end


    def self.all 
        @@all
    end 

end 