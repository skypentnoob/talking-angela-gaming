# frozen_string_literal: true

# This simple bot responds to every "Ping!" message with a "Pong!"

require 'discordrb'

# token
bot = Discordrb::Bot.new token: 'OTQ4MzU5MTc1MjM3NDIzMjA1.Yh6qTw.bXgTJSKZJZSo89GcLTwGonye_YI', prefix: ''

# outputs invite
puts "This bot's invite URL is #{bot.invite_url}."
puts 'Click on it to invite it to your server.'

# burger and bonger
bot.message(content: 'Burger') do |event|
  event.respond 'Bonger'
end

bot.command :angela do |*text|
    event.respond ["Yes", "No", "Euugghh...", "Ho ho ho!", "Did I ask?"].sample
end

# runs the bot
bot.run