class PicsController < ApplicationController
	def index
		@pics = Pic.all
	end

	def new
		@pic = Pic.new
	end

	def create
		if params[:submit]
			@pic = Pic.create(params[:pic])
		end
		redirect_to pics_path
	end

end