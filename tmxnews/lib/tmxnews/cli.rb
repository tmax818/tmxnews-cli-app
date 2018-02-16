# CLI Controller - dealing with user interactions
class Tmxnews::CLI

    def call
        menu
    end

    def list_articles
        #this is where you get the data...
        @article = Tmxnews::Article.today
        @article.each.with_index(1) do |article, i|
            puts "\t#{i}. #{article.title}"
            puts
        end
    end

    def menu
        hello
        list_articles
        input = nil
        while input != "exit"
            puts "Enter the number of the article you would like to read or type 'exit' to end the program."
            input = gets.strip.downcase

            if input.to_i > 0
                the_article = @article[input.to_i-1]
                puts "Headline: #{the_article.title}\n Summary: #{the_article.text}\n URL: #{the_article.url}"
            elsif input == "list"
                list_articles
            elsif input == "exit"
                good_bye
            else
                puts "Not sure what you want, type 'list', 'exit', or select an article."
            end
        end
    end

    def hello
      puts <<~HEREDOC
      This gem provides a CLI that displays the top headlines from the New York Times and the Wall Street Journal. These publications were selected because of their reputations for excellence in journalism as well as being known for representing opposite ends of the political spectrum.

      \t(1) is the headline from the lead article from the New York Times website.
      \t(2) is the headline for the lead article from the Wall Street Journal.

      Selecting each option will provide a brief summary of the article as well as a link to the complete article.\n
      HEREDOC
    end

    def good_bye
        puts "Thank you for using Tmxnews! Check in tomorrow for the headlines."
    end

end
