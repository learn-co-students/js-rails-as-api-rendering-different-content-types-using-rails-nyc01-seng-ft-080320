class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds
    # render plain: "Hello #{@birds[3].name}"
    # render 'birds/index.html.erb'
  end
end
