# CLI Controller - dealing with user interactions 
class Tmxnews::CLI 

    def call
        menu
    end 

    def list_articles
        #this is where you get the data...
        @article = Tmxnews::Article.today 
        @article.each.with_index(1) do |article, i|
            puts "#{i}. #{article.title}"
        end 
    end 

    def menu
        puts "Welcome to Tmxnews"
        puts "Today's Headlines ... "
        list_articles
        input = nil
        while input != "exit"
            puts "Enter the number of the article you would like to read or type 'exit' to exit"
            input = gets.strip.downcase 

            if input.to_i > 0
                the_article = @article[input.to_i-1]
                puts "Headline: #{the_article.title}\n\n Summary: #{the_article.text}\n\n URL: #{the_article.url}"
            elsif input == "list"
                list_articles
            elsif input == "exit"
                good_bye 
            else 
                puts "Not sure what you want, type 'list', 'exit', or select an article..."
            end 
        end 
    end 

    def good_bye
        puts "Thank you for using Tmxnews! Check in tomorrow for the headlines"
    end 

end 