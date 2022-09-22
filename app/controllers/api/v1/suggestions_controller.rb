class Api::V1::SuggestionsController < ApplicationController
  def index
    @waypoints = Suggestion.suggestions(params[:origin], params[:destination])

    render json: @waypoints
  end
end
