class PagesController < ApplicationController
  def dashboard
    @albums = Album.active
  end
end
