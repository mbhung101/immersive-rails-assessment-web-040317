class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end



  def new
    @guest = Guest.new
    @appearance = Appearance.new
  end

  def create
    @guest = Guest.find_or_create_by(id: params[:id])
    @appearance = Appearance.create(guest_id: params[:appearance][:id],episode_id: params[:appearance][:id],star_rating:params[:appearance][:star_rating])
  end

  def show
    @guest = Guest.find_by(id: params[:id])
  end
end
