class WashroomsController < ApplicationController
  def index
    @washrooms = Washroom.all
  end

  def open
    @washroom = Washroom.find(params[:id])

    if @washroom.open
      redirect_to action: :index
    else
      render status: 400
    end
  end

  def close
    @washroom = Washroom.find(params[:id])

    if @washroom.close
      redirect_to action: :index
    else
      render status: 400
    end
  end
end
