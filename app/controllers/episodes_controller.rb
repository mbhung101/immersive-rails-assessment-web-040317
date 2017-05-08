class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def new
    @episode = Episode.new()
  end

  def create
    @episode = Episode.find_or_create_by(id: params[:id])
  end

  def show
    @episode = Episode.find_by(id: params[:id])
  end

end
