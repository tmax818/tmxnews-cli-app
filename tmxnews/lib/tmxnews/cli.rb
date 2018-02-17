require_relative 'hello_goodbye'

class Tmxnews::CLI

  include HelloGoodbye

    def call
        menu
    end

    def menu
        hello
        @article = Tmxnews::Article.list_articles
        input = nil
        while input != "exit"
            puts "Enter the number of the article you would like to read or type 'exit' to end the program."
            input = gets.strip.downcase

            if input.to_i > 0
                the_article = @article[input.to_i-1]
                puts "Headline: #{the_article.title} Summary: #{the_article.text} URL: #{the_article.url}"
            elsif input == "list"
                list_articles
            elsif input == "exit"
                good_bye
            else
                puts "Not sure what you want, type 'list', 'exit', or select an article number."
            end
        end
    end


end
