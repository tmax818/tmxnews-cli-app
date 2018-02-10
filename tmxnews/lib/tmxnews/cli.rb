# CLI Controller - dealing with user interactions 
class Tmxnews::CLI 

    def call
        list_articles
        menu
    end 

    def list_articles
        #this is where you get the data...
        @article = Tmxnews::Article.today 
        @article.each.with_index(1) do |article, i|
            puts "#{i}. #{article.title} - #{article.url}"
        end 
    end 

    def menu
        puts "Welcome to Tmxnews"
        input = nil
        while input != "exit"
            puts "Enter the number of the article you would like to read or type 'exit' to exit"
            input = gets.strip.downcase 

            if input.to_i > 0
                the_article = @article[input.to_i-1]
                puts "#{the_article.title} - #{the_article.url}"
            elsif input == "list"
                list_articles
            else 
                puts "Not sure what you want, type list exit or select an article..."
            end 
        end 
    end 

end 