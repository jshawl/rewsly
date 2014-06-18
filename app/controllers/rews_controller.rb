class RewsController < ApplicationController

  def index
    if params[:q]
      @stories = Story.search_for( params[:q] ) 
    else
      @stories = Story.all
    end
  end

  def show
    @story = Story.find( params[:id] )
  end

end