class MatchesController < ApplicationController

  before_filter :set_match, only: [:show, :edit, :update, :destroy]

  def index
    @matches = Matche.all
  end

  def show
  end

  def new
    @match = Matche.new
  end

  def edit
    respond_to do |format|
      format.html{ render(:edit, layout: false)}
    end
  end

  def create
    @match = Matche.new(match_params)

    respond_to do |format|
      if @match.save
        format.html { redirect_to @match, notice: 'Match successfully created.' }
        format.json { render :show, status: :created, location: @match }
      else
        format.html { render :new }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end


    def update
      respond_to do |format|
        if @match.update_attributes(match_params)
          unless params[:user].nil? || params[:draw]
            @match.user = User.find(params[:user])
            @match.win_points = 3
            @match.save
          end
          if params[:draw]
            @match.player = nil
            @match.win_points = 1
            @match.save
          end
          @matches = Matche.all.sort_by{|m| m.tournament.name ? m.tournament.name: m.game.title}
          format.js
        else
          format.html { render :edit }
          format.json { render json: @match.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @match.destroy
    end
  end


  private

  def set_match
    @match = Matche.find(params[:id])
  end


  def match_params
    params[:match]
  end
end
