module HelloGoodbye

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
