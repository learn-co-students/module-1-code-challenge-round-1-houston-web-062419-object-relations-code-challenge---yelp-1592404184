class Customer

    attr_accessor :given_name, :family_name
      @@all = []


    def initialize(given_name, family_name)
      @given_name = given_name
      @family_name  = family_name
      @@all << self
    end

    def full_name
      "#{given_name} #{family_name}"
    end

    def restaurants

        all_restaurants = []

        Review.all.each do |review|
        if review.customer == self
            all_restaurants << review.restaurant
            end
        end
        all_restaurants
    end 

    def  add_review(restaurant,rating)
       
            Review.new(self,restaurant,rating)

    end


    def self.all
        @@all 
    end

end


