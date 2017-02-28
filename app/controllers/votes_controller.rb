class VotesController < ApplicationController
  before_action :set_vote, only: [:show, :update, :destroy]

  # GET /votes
  # GET /votes.json
  def index
    @votes = Vote.all

    render json: @votes
  end

  # GET /votes/1
  # GET /votes/1.json
  def show
    render json: @vote
  end

  # POST /votes
  # POST /votes.json
  def create
    #@vote = Vote.new(vote_params)
    # @vote.created_by = current_user.id
    @vote = current_user.votes.build(vote_params)

    if @vote.save
      render json: @vote, status: :created, location: @vote
    else
      render json: @vote.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /votes/1
  # PATCH/PUT /votes/1.json
  def update
    @vote = Vote.find(params[:id])
    @vote.created_by = current_user.id
    if @vote.update(vote_params)
      head :no_content
    else
      render json: @vote.errors, status: :unprocessable_entity
    end
  end

  # DELETE /votes/1
  # DELETE /votes/1.json
  def destroy
    @vote.destroy

    head :no_content
  end

  private

    def set_vote
      @vote = Vote.find(params[:id])
    end

    def vote_params
      params[:vote]
    end
end
