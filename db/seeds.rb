# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "seeding sample objects..."

show = Show.create(name: "show1", overview: "lorem ipsum...")
season = Season.create(name: "season1", show_id: show.id)
episode = Episode.create(number: 1, name: "episode1", overview: "lorem ipsum...", season_id: season.id, show_id: show.id)
character = Character.create(name: "character1", show_id: show.id, episode_id: episode.id)
fashion = Fashion.create(name: "fashion1", character_id: character.id, season_id: season.id, show_id: show.id, episode_id: episode.id)

puts "Done!"