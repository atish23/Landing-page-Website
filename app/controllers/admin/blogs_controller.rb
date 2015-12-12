class Admin::BlogsController < ApplicationController
	def index
		@blogs = Blog.all
	end

	def new
		@blog = Blog.new
	end

	def edit
		@blog = Blog.find(params[:id])
	end

	def create
		@blog = Blog.new(blog_params)
		if @blog.save
			flash[:notice] = "Blog Created succesfully"
			redirect_to root_path
		else
			render new
		end
	end

	def update
		
	end

	def destroy
		
	end
private
	def blog_params
		params.require(:blog).permit!
	end
end
