class AnimalHavenScraper::CLI

  def call 
    system("clear")
    puts "\n Hello hooman!"
    list_menu
    user_input  
  end

  #List Main Menu options and ask for user input - read dogs or exit program
  def list_menu
    puts "\nMain Menu"
    puts "1. Dogs"
    puts "2. Exit"
  end
  

  def user_input  
    input = 'nil'
    while input 
      puts "\nEnter '1' to see dogs available for adoption on Animal Haven, or 'exit' to exit:\n"
      input = gets.strip.downcase

        case input
            when "1"  
              display_dogs_list

            when "exit","2"
              puts "\nbye hooman!"
              puts "\n"
              exit 
            else
              puts "Didn't catch the hooman lingo. Woof again. \n"
              list_menu
        end 
    end 
  end 

  # Display dogs available for option and ask for user input 
  def display_dogs_list
    system("clear")
    puts "\n Dogs available for adoption on Animal Haven:"

    dogs = Dogs.items

    puts "\n"
    
    dogs.each.with_index(1) do |each_dog, index|
      puts "#{index}. #{each_dog.name} - #{each_dog.age}"
    end

    read_dog_input
  end 
    
  def read_dog_input
    #ask user for which dog they would like to view in more detail
    input = ' '

    puts "\nEnter the dog number to learn more, or type 'exit' to go back to the main menu."
    input = gets.strip

    if Dogs.valid_number?(input)
      dogs_list = Dogs.find_by_id(input)
      system("clear")
      puts "\nName: #{dogs_list.name}"
      puts "\nAge: #{dogs_list.age}"
      puts "\nGender: #{dogs_list.gender}"
      puts "\nBreed: #{dogs_list.breed}"
      puts "\nDescription: \n#{dogs_list.description}"

    elsif input == 'exit'
      list_menu 
    else
      puts "\n Didn't catch the hooman lingo. Woof again."
      read_dog_input         
        
    end

  end 

end 