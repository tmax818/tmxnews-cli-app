require_relative 'hello_goodbye'

class Tmxnews::CLI

  include HelloGoodbye

    def menu
        hello
        @article = Tmxnews::Article.list_articles
        input = nil
        while input != "exit"
            puts "Enter the number of the article you would like to read or type 'exit' to end the program."
            input = gets.strip.downcase

            if input.to_i > 0
                the_article = @article[input.to_i-1]
                puts "Headline: #{the_article.title}"
                puts "Summary: #{the_article.text}"
                puts "URL: #{the_article.url}"
            elsif input == "exit"
                good_bye
            else
                puts "Please type 'exit' or select an article number."
            end

        end
    end
end
