class Api::EatersController < ApplicationController
  def index
    @eaters = Eater.all
    render 'index.json.jb'
  end

  def create
    @eater = Eater.new(
      name: params[:name],
      pr_hot_dogs: params[:pr_hot_dogs],
      age: params[:age],
      nationality: params[:nationality],
    )
    @eater.save
    
    render 'show.json.jb'
  end
end
