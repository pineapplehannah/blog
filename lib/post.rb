require 'json'

class Post
	def self.load_files(directory ='data/')
		posts = []
		Dir.glob(directory + '*.json').each do |file|
			post = JSON.load(File.read(file))
			id = File.basename(fle, '.json')

			posts << self.new(:id => id, :body => post['body'], :title => post['title'])
		end

		posts
	end

	attr_reader :id, :title, :body

	def initialize(options)
		@id = options[:id]
		@body = options[:body]
		@title = options[:title]
	end
end