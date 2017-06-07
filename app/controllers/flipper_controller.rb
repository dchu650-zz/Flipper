class FlipperController < ApplicationController
	require 'flipString'

	def index
		@text = params[:text]
	end
	def create
		@text = FlipString.flip(params[:text])
		render :index
	end
end
