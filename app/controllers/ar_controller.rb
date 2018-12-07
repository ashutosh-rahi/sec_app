class ArController < ActionController::Base
	def bar
		render html: "This is the bar action"
	end
	def baz
		render html: "This is the baz action"
	end
end


