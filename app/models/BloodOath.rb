class BloodOath
    attr_accessor :cult, :follower

    @@all = []
    # @initiation_date = ""

    def initialize(cult, follower)
        @cult = cult 
        @follower = follower
        # @initiation_date = "#{Time.now.year} -#{Time.now.month}-#{Time.now.day}"
        
       
        @initiation_date = []
        @initiation_date << Time.new.year
        @initiation_date << Time.new.month
        @initiation_date << Time.new.day
        # @initiation_date << Time.now
        
        @@all << self 
    end 

    def initiation_date
        @initiation_date.join("-").to_s
    end

    def self.initiation_date(follower, cult)
        i = BloodOath.all.find do |oath|
            if oath.follower == follower && oath.cult == cult
                return oath.initiation_date
            end
        end

        
    end 

    def self.all
        @@all
    end 


end 