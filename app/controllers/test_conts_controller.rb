class TestContsController < ApplicationController
 
  def index
  	@search = Collaborator.find_by_names(params[:search]) 
  end
end
