class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	def hello
		render html: "This is the sample webapp!"
	end
end
