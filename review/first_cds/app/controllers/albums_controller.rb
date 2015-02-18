class AlbumsController < ApplicationController
  include Wicked::Wizard

  steps :name, :photo, :year

  before_action do
    @album = Album.find_by id: session[:build_album_id]
    if @album.nil?
      @album = Album.create! status: ""
      session[:build_album_id] = @album.id
    end
  end

  def show

    render_wizard
  end

  def update

    case step
    when :name
      # update @album from params
      @album.update params.require(:album).permit(:name, :buyer)
    when :photo
      @album.update params.require(:album).permit(:photo_url)
    when :year
      @album.update params.require(:album).permit(:year)
    end


    if step == steps.last
      @album.update_attribute(:status, 'active')
      session[:build_album_id] = nil
    else
      @album.update_attribute(:status, step.to_s)
    end

    render_wizard @album
  end

end
