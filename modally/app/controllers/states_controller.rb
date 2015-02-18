class StatesController < ApplicationController
  def index

    respond_to do |format|
      format.html {}
      format.json do
        @states = State.where("name ILIKE ?", "%#{params[:search]}%")
        render json: @states.as_json
      end
    end
  end
end
