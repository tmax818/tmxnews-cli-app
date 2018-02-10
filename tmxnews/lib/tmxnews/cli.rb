# CLI Controller - dealing with user interactions 
class Tmxnews::CLI 

    def call
        puts "Welcome to Tmxnews"
        list_articles
    end 

    def list_articles
        puts "Today's Headlines ... "
    end 


    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the article you would like to read or type exit to exit"
            input = gets.strip.downcase 
            case input
                when "1"
                    puts "Article 1 ..."
                when "2"
                    puts "Article 2 ..."
                when "list"
                        list_articles
                
            end 
        end 
    end 

end 