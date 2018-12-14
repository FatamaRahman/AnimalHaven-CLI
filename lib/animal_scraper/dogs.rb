class Dogs

  attr_accessor :name, :age, :url, :gender, :breed, :description
  @@dogs = [] 
    
  def self.items
    self.destroy_all 
    self.scraper 
  end

  def self.scraper
    Dogs_scraper.scrape_dogs
    @@dogs
  end

  def initialize (dogs_name, dogs_age, dogs_url, dogs_gender, dogs_breed, dogs_description)
    @name = dogs_name 
    @age = dogs_age  
    @url = dogs_url 
    @gender = dogs_gender
    @breed = dogs_breed
    @description = dogs_description
    save
  end 

  def save  
    @@dogs << self 
  end 

  def self.all 
    @@dogs
  end

  def self.valid_number?(num)
    num.to_i > 0 && num.to_i <= Dogs.all.size
  end

  def self.find_by_id(index)
    self.all[index.to_i-1]
  end

  def self.destroy_all
    @@dogs.clear
  end
  
end 
