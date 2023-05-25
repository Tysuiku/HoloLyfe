class Api::VtubersController < ApplicationController
  def index
    @vtubers = Vtuber.all
    render "api/vtubers/index"
  end

  def show
    @vtuber = Vtuber.find(params[:id])
    render "api/vtubers/show"
  end
end
