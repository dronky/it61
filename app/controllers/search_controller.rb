class SearchController < ApplicationController
  def index
    @q = Event.ransack(params[:q])
    @people = @q.result(distinct: true)
  end
end
