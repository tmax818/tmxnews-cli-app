# CLI Controller - dealing with user interactions 
class Tmxnews::CLI 

    def call
        list_articles
        menu
    end 

    def list_articles
        puts "Today's Headlines ... "
        #this is where you get the data...
        @article = Tmxnews::Article.all 

    end 


    def menu
        puts "Welcome to Tmxnews"
        input = nil
        while input != "exit"
            puts "Enter the number of the article you would like to read or type 'exit' to exit"
            input = gets.strip.downcase 
            case input
                when "1"
                    puts "Article 1 ..."
                when "2"
                    puts "Article 2 ..."
                when "list"
                list_articles
                else
                    puts "Not sure what you want, type list exit or select an article..."
            end 
        end 
    end 

end 