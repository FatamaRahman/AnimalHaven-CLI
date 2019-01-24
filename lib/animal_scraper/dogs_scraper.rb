class Dogs_scraper

  def self.scrape_dogs

    doc = Nokogiri::HTML(open("https://www.animalhavenshelter.org/adopt/dogs/"))
    eachDog = doc.search(".grid-row")
    # binding.pry
    
    eachDog.take(10).each do |dogs_doc|
      dogs_name = dogs_doc.search("div.box-info h4").first.text.strip
      dogs_age = dogs_doc.search("div.box-info span").first.text.strip
      dogs_url = dogs_doc.search('a[href]').first.attributes['href'].value
      dogs_gender = self.scrape_content_gender(dogs_url)
      dogs_breed = self.scrape_content_breed(dogs_url)
      dogs_description = self.scrape_content_description(dogs_url)

      dogs = Dogs.new(dogs_name, dogs_age, dogs_url, dogs_gender, dogs_breed, dogs_description)
      dogs   
    end        
  end


  #scraping for content 
  def self.scrape_content_gender(dogs_url)
    full_url = URI.join('', dogs_url).to_s
    doc = Nokogiri::HTML(open(full_url))
    dogs_gender = doc.search('div.content-primary span')[1].text.strip
    dogs_gender
  end
  
  def self.scrape_content_breed(dogs_url)
    full_url = URI.join('', dogs_url).to_s
    doc = Nokogiri::HTML(open(full_url))
    dogs_breed = doc.search('div.content-primary span')[2].text.strip
    dogs_breed
  end
  
  def self.scrape_content_description (dogs_url)
    full_url = URI.join('', dogs_url).to_s
    doc = Nokogiri::HTML(open(full_url))
    dogs_description = doc.search("div.pet-description p").inner_text
    dogs_description  
  end

end 