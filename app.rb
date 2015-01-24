require 'rubygems'
require 'sinatra'
require 'lib/post.rb'

#get '/' do
#	"I'm a Home Page and I will display 4 posts!"	
#end
#
#get '/about' do
#	"Here will be some information about me"
#end
#
#get '/blog/:post' do
#	"My blog post will be here"
#end

class Blog < Sinatra::Base
	before do
		@posts = Post.load_files
	end

	get '/' do
		"I'm a Home Page and I will display 4 posts!"	
	end

	get '/about' do
		"Here will be some information about me"
	end

	get '/blog/:post' do
		"My blog post will be here"
	end
end