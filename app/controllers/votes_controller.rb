class VotesController < ApplicationController
  def create
    render json: Vote.all.to_json
  end

  def destroy
    v = Vote.find(params[:id])
    render v.destroy
    render json: "Vote Destroyed"
  end

  def index
    render json: "yo"
  end
end
