require_relative 'User'

class AngryChatbot
	include Observable
	attr_accessor :h
	def initialize
		f=File.new('chatter_angry.txt','r')
		@h=Hash.new
		f.each_line do |i|
		  i=i.chomp
		  i=i.split(/:|;/)
		  (0...i.length).step(2).each do |j|
		    @h[i[j]]=i[j+1]
		  end
		end
		
	end
	def enterChat user
		s=gets.chomp
		if @h.key?(s)
			user.add_observer(AngryChatbot.new)
		end
	end
end
