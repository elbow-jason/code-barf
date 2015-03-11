require 'catgoose'
require_relative 'config'
require_relative 'controllers/get_code'
require_relative 'controllers/split_code'
require_relative 'controllers/send_words'
require_relative 'routes'

Catgoose.before_message do |connection, data|
  puts connection, data, 'incoming message.'
end

Catgoose.channels[:barf] = Catgoose::Channel.new('barf')

begin
  Catgoose.fly
rescue Exception => e
  puts "Server has crashed"
end
