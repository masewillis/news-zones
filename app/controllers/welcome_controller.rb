class WelcomeController < ApplicationController
  include WindowsHelper

  def index
    @headlines = Headline.all
  end

  def create
# @feed = Feedjira::Feed.fetch_and_parse("http://www.theguardian.com/uk/rss")
# @articles = @feed.entries.first(30)
    publication_all = Publication.all
    publication_all.each do |publication|
      @feed = Feedjira::Feed.fetch_and_parse(publication.rss_url)
      @articles = @feed.entries.first(30)

      @articles.each do |entry|
        translator = BingTranslator.new(@@client_id, @@client_secret)

        if entry.url.include?(publication.publication_name)
          title = translator.detect(entry.title)
          if title == :en
            new_headline = Headline.create({
              en_headline: entry.title,
              timestamp: entry.published,
              place_id: publication.place_id
            })
          else
            translated_title = translator.translate entry.title, :to => 'en'
            foreign_headline = entry.title
            new_headline = Headline.create({
              en_headline: translated_title,
              foreign_headline: foreign_headline,
              timestamp: entry.published,
              place_id: publication.place_id
            })
          end

          if entry.methods.include?("categories")
            entry.categories.each do |entry_category|
            Category.create({
            category: entry_category,
            headline_id: new_headline.id
            })
            end
          end

        end

      end

    end
    redirect_to "/"
  end




end
