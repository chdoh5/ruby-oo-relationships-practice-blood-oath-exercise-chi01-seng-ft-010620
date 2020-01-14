class Follower  
    attr_accessor :name, :age, :life_motto, :cult, :follower_age

    @@all = []

    def initialize(name, age, life_motto)
        @name = name 
        @age = age
        @life_motto = life_motto

        @@all << self
    end 

    def cults
       i = BloodOath.all.select {|blood| blood.follower == self}
       i.map {|cults| cults.cult.name}
    end

    def join_cult(cult)
        @cult = cult

        BloodOath.new(cult, self)
    end 

    def self.of_a_certain_age(follower_age)
        @follower_age = follower_age 

        Follower.all.select do |f| if f.age >= follower_age
             puts f.name
        end
        end
    end

    def self.all
        @@all
    end

end 