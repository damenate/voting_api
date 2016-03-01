class CandidatesController < ApplicationController
  def index
    render json: Candidate.all.to_json
  end

  def show
    id = params[:id]
    render json: Candidate.find(id).to_json
  end

  def create
    c = Candidate.create(name: params["name"], hometown: params["hometown"], district: params["district"], party: params["party"])
    render json: c
  end
end
