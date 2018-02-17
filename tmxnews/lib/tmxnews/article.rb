class Tmxnews::Article

  @@all = []

  def initialize
    @@all << Tmxnews::Scraper.scrape_nyt
    @@all << Tmxnews::Scraper.scrape_wsj
  end

  def all 
    @@all
  end


    # def self.today
    #     Tmxnews::Scraper.scrape_articles
    # end
end
