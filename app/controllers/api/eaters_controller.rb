class Api::EatersController < ApplicationController
  def index
    @eaters = Eater.all
    render 'index.json.jb'
  end
end
