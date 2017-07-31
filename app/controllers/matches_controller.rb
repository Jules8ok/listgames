class MatchesController < ApplicationController
  before_filter :set_match, only: [:show, :edit, :update, :destroy]

  def index
    @matches = Match.all.sort_by{|m| m.tournament.name ? m.tournament.name: m.videogame.title}
  end

  def show
  end

  def new
    @match = Match.new
  end

  def edit
    respond_to do |format|
      format.html{ render(:edit, layout: false)}
    end
  end

  def create
    @match = Match.new(match_params)

    respond_to do |format|
      if @match.save
        format.html { redirect_to @match, notice: 'Match was successfully created.' }
        format.json { render :show, status: :created, location: @match }
      else
        format.html { render :new }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @match.update_attributes(match_params)
        unless params[:player].nil? || params[:draw]
          @match.player = Player.find(params[:player])
          PlayerMailer.win_match(@match).deliver
          @match.win_points = 3
          @match.save
        end
        if params[:draw]
          @match.player = nil
          @match.win_points = 1
          @match.save
        end
        @matches = Match.all.sort_by{|m| m.tournament.name ? m.tournament.name: m.videogame.title}
        format.js
      else
        format.html { render :edit }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @match.destroy
    respond_to do |format|
      format.html { redirect_to matches_url, notice: 'Match was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private

    def set_match
      @match = Match.find(params[:id])
    end


    def match_params
      params[:match]
    end
  end
