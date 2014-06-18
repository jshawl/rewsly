class StoriesController < ApplicationController

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

  def new
    @story = Story.new
  end

  def create
    @story = Story.new( story_params )
    if @story.save
      redirect_to @story
    else
      render :new
    end
  end

  def popular
    @stories = Story.popular
    render :index
  end

  private

  def story_params
    params.require(:story).permit(:title, :url, :category, :upvotes)
  end

end