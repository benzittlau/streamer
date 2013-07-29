class WashroomsController < ApplicationController
  def index
    @washrooms = Washroom.all

    respond_to do |format|
      format.html
      format.xml { render :xml => @washrooms }
      format.json { render :json => @washrooms, :methods => [:state] }
    end
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
