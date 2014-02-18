class MusingsController < ApplicationController


           

#POST   /musings(.:format)          musings#create
  def create
    @musing = Musing.create(musing_params)
  end

#root GET    /                           musing#index
  def index
    @musings = Musing.all
  end

#musing GET    /musings/:id(.:format)      musings#show
  def show
    @musing = Musing.find(params[:id])
  end

#new_musing GET    /musings/new(.:format)      musings#new
  def new
    @musing = Musing.new
  end

#PUT    /musings/:id(.:format)      musings#update
#PATCH  /musings/:id(.:format)      musings#update
  def update
    @musing = Musing.find(params[:id])
    @musing.update_attributes(musing_params)
  end

#DELETE /musings/:id(.:format)      musings#destroy
  def destroy
    @musing = Musing.find(musing_params)
    @musing.destroy
  end

#edit_musing GET    /musings/:id/edit(.:format) musings#edit
  def edit
    @musing = Musing.find(musing_params)
  end



  private

  def musing_params
    params.require(:musing).permit(:title, :brain_burp)
  end

end