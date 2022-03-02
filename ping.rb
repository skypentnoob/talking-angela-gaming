# frozen_string_literal: true

# This simple bot responds to every "Ping!" message with a "Pong!"

require 'discordrb'
require 'dotenv'
Dotenv.load
# token
bot = Discordrb::Commands::CommandBot.new token: ENV['TOKEN'], prefix: ''

# outputs invite
puts "This bot's invite URL is #{bot.invite_url}."
puts 'Click on it to invite it to your server.'

# burger and bonger
bot.message(content: 'Burger') do |event|
  event.respond 'Bonger'
end

bot.command :angela do |*args|
  ["Yes", "No", "Euugghh...", "Ho ho ho!", "Did I ask?"].sample
end

# runs the bot
bot.run