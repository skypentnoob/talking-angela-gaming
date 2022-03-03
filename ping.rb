# This simple bot responds to every "Ping!" message with a "Pong!"

require 'discordrb'
require 'dotenv'
Dotenv.load
def piglatinize(word)
  vowels = %w{a e i o u}
  word.each_char do |chr|
  index = word.index(chr)
  if index != 0 && vowels.include?(chr.downcase)
    consonants = word.slice!(0..index-1)
    return word + consonants + "ay"
  elsif index == 0 && vowels.include?(chr.downcase)
    return word + "ay"
  end
end
end

def to_pig_latin(sentence)
sentence.split(" ").collect { |word| piglatinize(word) }.join(" ")
end
def pig_latin_msg(sentence)
  @sentence = sentence.to_s
  @sentence.split(" ").collect { |word| piglatinize(word) }.join(" ")
end
# token
bot = Discordrb::Commands::CommandBot.new token: ENV['TOKEN'], prefix: ''

# outputs invite
puts "This bot's invite URL is #{bot.invite_url}."
puts 'Click on it to invite it to your server.'
puts piglatinize("bruh")
puts to_pig_latin("true cheese")

# burger and bonger
bot.message(content: 'Burger') do |event|
  event.respond 'Bonger'
end
bot.command :test do |*args|
  puts args
  puts args.to_s
  puts args.class
  puts args[1]
  puts args[2]
end
bot.command :angela do |*args|
  ["Yes", "No", "Euugghh...", "Ho ho ho!", "Did I ask?"].sample
end

bot.command :piglatin do |event, *args|
# stuff 
  to_pig_latin(args.join(' '))
end

# bot.command :8ball do |*args|
#   [
# "It is certain"
# "It is decidedly so"
# "Without a doubt"
# "Yes, definitely"
# "You may rely on it"
# "As I see it, yes"
# "Most likely"
# "Outlook good"
# "Yes"
# "Signs point to yes"
# "Reply hazy try again"
# "Ask again later"
# "Better not tell you now"
# "Cannot predict now"
# "Concentrate and ask again"
# "Don't count on it"
# "My reply is no"
# "My sources say no"
# "Outlook not so good"
# "Very doubtful"
#   ].sample
# end

# runs the bot
bot.run