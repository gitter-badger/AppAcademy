require 'jumpstart_auth'
require 'bitly'
require 'klout'

class MicroBlogger
  attr_reader :client

  def initialize
    puts "Initializing"
    @client = JumpstartAuth.twitter
    @k = Klout::API.new('6f2zva63qwtan3hgwvesa7b8')
  end

  def tweet(message)
    if message.length <= 140
      @client.update(message)
    else
      raise "Your message is too long."
    end
  end

  def dm(target, message)
    puts "Trying to send #{target} this direct message"
    screen_names = @client.followers.collect{|follower| follower.screen_name}
    if !screen_names.include?(target)
      raise "This person does not follow you"
    end
    tweet(message)
  end

  def followers_list
    screen_names = []
    @client.followers.collect do |follower|
      screen_names << follower["screen_name"]
    end
    screen_names
  end

  def spam_my_followers(message)
    screen_names = followers_list
    screen_names.each do |follower|
      dm(follower, message)
    end
  end

  def everyones_last_tweet
    friends = @client.friends
    friends.sort_by! { |friend| friend.screen_name.downcase }
    friends.each do |friend|
      timestamp = friend.status.created_at
      message = friend.status.source
      puts "#{friend}: #{message} #{timestamp.strftime("%A, %b %d")}"
    end
  end

  def shorten(original_url)
    bitly = Bitly.new('hungryacademy', 'R_430e9f62250186d2612cca76eee2dbc6')
    puts "Shortening this URL: #{original_url}"
  end

  def klout_score
    friends = @client.friends.collect{|f| f.screen_name}
    friends.each do |friend|
      puts "#{friend.screen_name}"
      klout = @k.klout('friend.screen_name')["kscore"]
      puts "#{klout}"
      puts ""
    end
  end

  def run
    puts "Welcome to the JSL Twitter Client!"
    command = ""
    while command != "q"
      printf "enter command: "
      input = gets.chomp
      parts = input.split
      command = parts[0]
      case command
      when 'q' then puts "Goodbye!"
      when 't' then tweet(parts[1..-1].join(" "))
      when 'dm' then dm(parts[1], parts[2..-1].join(" "))
      when 'spam' then spam_my_followers(parts[1], parts[2..-1].join(" "))
      when 'elt' then everyones_last_tweet
      when 's' then shorten(parts[1])
      else
        puts "Sorry, I don't know how to #{command}"
      end
    end
  end
end

blogger = MicroBlogger.new
blogger.run