class PicsController < ApplicationController
	before_filter :authenticate_user!, :only => [:new, :create]
	def index
		# All pictures visible to all
		@pics = Pic.all
		# Users only see their Pictures
		#@pics = current_user.pics.all
	end

	def new
		@pic = Pic.new
	end

	def create
		@pic = current_user.pics.create(params[:pic])
		redirect_to pics_path
	end

end
