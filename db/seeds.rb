# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

kirk   = User.create! name: 'Kirk'
spock = User.create! name: 'Spock'
mccoy  = User.create! name: 'McCoy'
sulu   = User.create! name: 'Sulu'

Question.create! text: 'What colour is the sky?', user: spock
Question.create! text: 'Why is the sky blue?', user: kirk
