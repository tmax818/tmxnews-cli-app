class Tmxnews::Article

  @@all = []

  def self.articles
    @@all << Tmxnews::Scraper.scrape_nyt
    @@all << Tmxnews::Scraper.scrape_wsj
    @@all
  end

  def self.list_articles
      articles.each.with_index(1) do |article, i|
      puts "#{i}. #{article.title}"
      puts
      end
  end
end
