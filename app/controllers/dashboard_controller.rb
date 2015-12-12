class DashboardController < ApplicationController
  def index
  	@blog= Blog.all
  end
end
