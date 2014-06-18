class RewsController < ApplicationController
  def index
    @stories = Story.all
  end
end