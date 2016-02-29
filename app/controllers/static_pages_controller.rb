class StaticPagesController < ApplicationController
	def home
	#@name = params[:name]
	@places = Place.all
	
	end
	
	def About
		end
	end

