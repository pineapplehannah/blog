require 'sinatra'

get '/' do
	"I'm a Home Page and I will display 4 posts!"	
end

get '/about' do
	"Here will be some information about me"
end

get '/blog/:post' do
	"My blog post will be here"
end