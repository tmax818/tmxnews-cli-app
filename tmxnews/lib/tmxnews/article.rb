class Tmxnews::Article # don't understand the reason for this namespacing.. 
    attr_accessor :name, :url 

    def self.today          # return instances of article
        puts "Today's Headlines ... "

        article_1 = self.new
        article_1.name = "The title of the first article...?"
        article_1.url = "https://www.nytimes.com/"

        article_2 = self.new
        article_2.name = "The title of the first article...?"
        article_2.url = "https://www.wsj.com/"

        [article_1, article_2]  # by the end, return array of articles ..

    end 
end 