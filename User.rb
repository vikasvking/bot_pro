require_relative 'DepressedChatbot'
require_relative 'HappyChatbot'
require_relative 'AngryChatbot'
require 'observer'
class User
	include Observable
	attr_accessor :name
	def initialize name
		@name=name
		add_observer(DepressedChatbot.new)
		add_observer(HappyChatbot.new)
		add_observer(AngryChatbot.new)
	end

	def converse
	end
end
