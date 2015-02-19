class PagesController < ApplicationController
  def dashboard
    @albums = Album.active

    if params[:qs].present?
      @albums = @albums.search(params[:qs])
    end
  end
end
