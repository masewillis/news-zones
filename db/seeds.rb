# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Place.delete_all
Publication.delete_all
Headline.delete_all
Category.delete_all

london = Place.create({
  place_name: "London"
  })

new_york = Place.create({
  place_name: "New York"
  })

istanbul = Place.create({
  place_name: "Istanbul"
  })

Publication.create({
  publication_name: "theguardian",
  place_id: london.id,
  rss_url: "http://www.theguardian.com/uk/rss"
  })

Publication.create({
  publication_name: "nytimes",
  place_id: new_york.id,
  rss_url: "http://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml"
  })

Publication.create({
  publication_name: "radikal",
  place_id: istanbul.id,
  rss_url: "http://www.radikal.com.tr/d/rss/RssSD.xml"
  })
