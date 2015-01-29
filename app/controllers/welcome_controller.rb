class WelcomeController < ApplicationController
	before_action :crazy_margin, :refer_param, :set_color
  def index
  	@homeland = 'US'
  	@countries = ["Italy", "Germany", "UK", "USA"]
  	@images = ["milan","frankfurt","london","atlanta"]
  	@current_country = params[:current_country]
  	@current_country ||= "US"
  end

  def about
  	@color = params[:color]
  	@shoesize = params[:size].to_i
  	@families = {
  		"Marvin"=>"father",
  		"Candy"=>"mother",
  		"Carol"=>"maternal grandmother",
  		"Stanley"=>"maternal grandfather",
  		"Rose"=>"paternal grandmother",
  		"Don"=>"paternal grandfather"
  	}
  	@previous = params[:previous]
  	
  end

  private

  def crazy_margin
  	@crazy = params[:crazy]
  end

  def refer_param
  	@refer = params[:refer] 
  end

  def set_color
  	if params[:mood]
  		session[:mood] = params[:mood]
  	end
  		@mood = session[:mood]
  end
end
