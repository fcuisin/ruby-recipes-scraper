class RecipesController < ApplicationController
  def new
    if params[:search] == "" || params[:search] == nil
      if params[:search] == ""
        flash[:alert] = "Empty Field"
      end
    else
      @search = params[:search].downcase
      flash[:success] = "Great move"
    end
  end
end
