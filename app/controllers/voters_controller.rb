class VotersController < ApplicationController

  def index
    render json: Voter.all.to_json
  end

  def create
    voter = Voter.new(name: params[:name], party: params[:party])
    if voter.save
      render json: voter
    else
      render json: voter.errors
    end
  end

  def show
    voter = Voter.find(params[:id])
    if voter.access_token == params[:access_token]
      render json: voter
    else
      render json: "Access Denied!"
    end
  end

  def update
    voter = Voter.find(params[:id])
    #voter = Voter.find_by(access_token:params[:access_token])
    if voter.access_token == params[:access_token]
      #voter.update(name: params[:name], party: params[:party])
      voter.name = params[:name] if params[:name]
      voter.party = params[:party] if params[:party]
    if voter.save
      render json: voter
    else
      render json: voter.errors
    end
    else
      render json: "No Update for YOU!"
    end
  end
end
