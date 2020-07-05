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

  def show
    @eater = Eater.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def update
    # find the eater
    @eater = Eater.find_by(id: params[:id])
    # update the eater
    @eater.update(
      name: params[:the_name],
      pr_hot_dogs: params[:the_pr],
      age: params[:the_age],
      nationality: params[:the_nationality]
    )
    
    render 'show.json.jb'
  end

  def destroy
    @eater = Eater.find_by(id: params[:id])
    @eater.destroy

    render json: {message: "Eater successfully removed from MLE"}
  end
end
