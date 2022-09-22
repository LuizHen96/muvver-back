class Api::V1::SuggestionsController < ApplicationController
  def create
    @waypoints = Suggestion.suggestions(params[:origin], params[:destination])

    render json: @waypoints
  end
end
