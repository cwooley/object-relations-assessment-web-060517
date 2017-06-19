# Please copy/paste all three classes into this file to submit your solution!
#############################RESTAURANT###############################
class Restaurant
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name.downcase == name.downcase
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    self.reviews.map do |review|
      review.customer
    end
  end
end

##################REViEW#########################################
#I guess review is a keyword for comments?

class Review

  attr_accessor :customer, :restaurant, :content
  @@all = []


  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end
end

####################CUSTOMER####################################

class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Customer.all.find do |customer|
      name.downcase == customer.full_name.downcase
    end
  end

  def self.find_all_by_first_name(first_name)
    Customer.all.select do |customer|
      customer.first_name.downcase == first_name.downcase
    end
  end

  def self.all_names
    @@all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content)
    review = Review.new(self, restaurant, content)
  end


  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def reviewed_restaurants
    self.reviews.map do |review|
      review.restaurant
    end
  end


end
