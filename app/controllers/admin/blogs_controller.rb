=begin
class Admin::BlogsController < ApplicationController
	before_action :authenticate_admin!
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
			render 'new'
		end
	end

	def update
		@blog = Blog.find(params[:id])
		if @blog.update_attributes(blog_params)
			redirect_to @blog
		else
			render 'edit'
		end
	end

	def destroy
		@blog = Blog.find(params[:id])

		@blog.destroy
		redirect_to admin_blogs_path
	end

private
	def blog_params
		params.require(:blog).permit!
	end
end
=end
