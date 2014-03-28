class MusingsController < ApplicationController

# Prefix Verb   URI Pattern                 Controller#Action
#        root GET    /                           musings#index
#     musings GET    /musings(.:format)          musings#index
#             POST   /musings(.:format)          musings#create
#  new_musing GET    /musings/new(.:format)      musings#new
# edit_musing GET    /musings/:id/edit(.:format) musings#edit
#      musing GET    /musings/:id(.:format)      musings#show
#             PATCH  /musings/:id(.:format)      musings#update
#             PUT    /musings/:id(.:format)      musings#update
#             DELETE /musings/:id(.:format)      musings#destroy


  def create
    @musing = Musing.create(musing_params)
  end

  def index
    @musings = Musing.all
  end

  def show
    @musing = Musing.find(params[:id])
  end

  def new
    @musing = Musing.new
  end

  def update
    @musing = Musing.find(params[:id])
    @musing.update_attributes(musing_params)
  end

  def destroy
    @musing = Musing.find(musing_params)
    @musing.destroy
  end

  def edit
    @musing = Musing.find(musing_params)
  end

  private
  def musing_params
    params.require(:musing).permit(:title, :brain_burp)
  end

end