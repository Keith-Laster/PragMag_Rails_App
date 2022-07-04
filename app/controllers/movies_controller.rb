class MoviesController < ApplicationController
  def index
    @movies = ['Iron Man', 'Superman', 'Spiderman', 'Captain America']
  end
end
