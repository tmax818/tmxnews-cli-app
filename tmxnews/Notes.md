#copy from souces code...

How to Build a CLI Gem

Plan your gem, imagine your interface
Start with the project structure - google
Start with the entry point - the file run
force that to build the CLI interface
stub out the interface
start making things real
discover objects.
program
A command line interface for daily deals, starting with woot and meh.
user types daily-deal

Show a list of products

PCH Digital Pulse Massager - $27 - Still available!
Lenovo ThinkPad 11E 11.6 - $199.99 - Still available!
Which product do you want to learn more about?

1

What is a deal?

A deal has a name 
A deal has a price 
A deal has a URL 
a deal has an avaiablity.

        article_1 = self.new
        article_1.name = "Title Article 1"
        article_1.url = "https://www.nytimes.com/"

        article_2 = self.new
        article_2.name = "Title Artice 2"
        article_2.url = "https://www.wsj.com/"