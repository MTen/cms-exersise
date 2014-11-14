class PortfolioController < ApplicationController
	
	def new
		@portfolio = Portfolio.new
	end

	def create
  	@portfolio = Portfolio.new(portfolio_params)
 
	  if @portfolio.save
	    redirect_to @portfolio
	  else
	    render 'new'
	  end
	end 
	
	private
  def article_params
    params.require(:portfolio).permit(:title, :project_type, :img_src, :img_class, :img_alt, :description)
  end

end
 
# 	t.string :project_type
# 	t.string :img_src
# 	t.string :img_class
# 	t.string :img_alt
# 	t.string :title
# 	t.text :description	