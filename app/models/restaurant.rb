class Restaurant
    attr_reader :name
      @@all = []

    def initialize(name)
    @name = name
    @@all << self
    end

    def reviews
        all_reviews = []

      Review.all.each do |review|
        if review.restaurant == self
          all_reviews <<  review
            end
        end
        all_reviews
    end

    def customers
        all_customers = []
        
      Review.all.each do |review|
        if review.restaurant == self
          all_customers << review.customer
            end
        end
          all_customers
    end

    def self.all
        @@all
    end
end 





#restaurant< customer < review