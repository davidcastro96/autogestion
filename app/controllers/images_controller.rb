class ImagesController < ApplicationController
	before_action :set_image, only:[:show, :edit, :update, :destroy]
	def index
		@images = Image.order(id: :desc)
		.where user_id: current_user.id
	end

	def new
		@image = Image.new
	end

	def create
		@image = current_user.images.new image_params

		if @image.save
			return redirect_to images_path
		end
		render :new
	end

	def show
	#before_action :set_image, only:[:show, :edit, :update, :destroy]
	end


	def edit
	#before_action :set_image, only:[:show, :edit, :update, :destroy]	
	end

	def update
	#before_action :set_image, only:[:show, :edit, :update, :destroy]
	@image.update image_params
	redirect_to @image
	end

	def destroy
	#before_action :set_image, only:[:show, :edit, :update, :destroy]
	@image.destroy
	redirect_to images_path
	end

	private
	def image_params # son los parametros que vienen desde la vista
		params.require(:image).permit(:description,:name,:picture)
	end

	def set_image
		@image = Image.find params[:id]
	end
	end
