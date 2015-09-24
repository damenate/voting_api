class VotersController < ApplicationController
  def create
    voter = Voter.new(name: params[:name])
    if voter.save
      render json: voter.to_json
    else
    render json: voter.errors
    end
  end

  def show
    voter = Voter.find_by(access_token:params[:access_token])
      if voter.access_token == params[:access_token]
      render json: voter.to_json
    else
    render json: "Access Denied!"
    end
  end

  def update
    voter = Voter.find_by(access_token:params[:access_token])
    voter.name = params[:name] if params[:name]
    voter.party = params[:party] if params[:party]
      if voter.save
        if voter.access_token == params[:access_token]
          render json: voter.to_json
        else
        render json: "Access Denied!"
      end
    else
      render json: "No Update for YOU!"
    end
  end
end
