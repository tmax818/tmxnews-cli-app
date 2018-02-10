class Tmxnews::Article # don't understand the reason for this namespacing.. 
    attr_accessor :title, :by_line, :text, :url 

    def self.today          
        # return instances of article
        # scrape nyt and wsj and return articles based on data 
        puts "Today's Headlines ... "
        self.scrape_articles
    end 
    
    
    def self.scrape_articles
        articles = []

        articles << self.scrape_nyt

        articles   # by the end, return array of articles ..
    end 

    def self.scrape_nyt 
        doc = Nokogiri::HTML(open("https://www.nytimes.com"))
        
        title = doc.search("h2.story-heading").first.text
        url = doc.search("h2.story-heading").first.css("a").attr("href").value
        #binding.pry

        article = self.new
        article.title = doc.search("h2.story-heading").first.text
        article.url = doc.search("h2.story-heading").first.css("a").attr("href").value
        article 


    end 
end 