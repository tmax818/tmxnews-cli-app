class Tmxnews::Article # don't understand the reason for this namespacing.. 
    attr_accessor :title, :text, :url 

    def self.today          
        # return instances of article
        # scrape nyt and wsj and return articles based on data 
        self.scrape_articles
    end 
    
    
    def self.scrape_articles
        articles = []

        articles << self.scrape_nyt
        articles << self.scrape_wsj 

        articles   # by the end, return array of articles ..
    end 

    def self.scrape_nyt 
        doc = Nokogiri::HTML(open("https://www.nytimes.com"))
        title = doc.search("h2.story-heading").first.text
        text = doc.search("article.story").first.css("li").text
        url = doc.search("h2.story-heading").first.css("a").attr("href").value
        #binding.pry

        article = self.new
        article.title = doc.search("h2.story-heading").first.text
        article.text = doc.search("article.story").first.css("li").text
        article.url = doc.search("h2.story-heading").first.css("a").attr("href").value
        article 
    end 

    def self.scrape_wsj 
        doc = Nokogiri::HTML(open("https://www.wsj.com"))
        title = doc.search("h3.wsj-headline").first.text
        text = doc.search("p.wsj-summary").first.text
        url = doc.search("h3.wsj-headline").first.css("a").attr("href").value
        #binding.pry

        article = self.new
        article.title = doc.search("h3.wsj-headline").first.text
        article.text = doc.search("p.wsj-summary").first.text
        article.url = doc.search("h3.wsj-headline").first.css("a").attr("href").value
        article 
    end 
end 