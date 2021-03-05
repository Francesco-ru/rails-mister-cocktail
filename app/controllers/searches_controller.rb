class SearchesController < ApplicationController

  def index
    @cocktails = Cocktail.where('lower(name) like ?', "%#{params[:query].downcase}%")
    render "/cocktails/index"
  end
end
