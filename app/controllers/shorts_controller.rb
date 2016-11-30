class ShortsController < ApplicationController
  before_action :set_short, only: [:show, :edit, :update, :destroy]

  # GET /shorts
  # GET /shorts.json


  # GET /shorts/1
  # GET /shorts/1.json
  def show
  end

  # GET /shorts/new
  def new
    @short = Short.new
  end

  # GET /shorts/1/edit
  
  # POST /shorts
  # POST /shorts.json
  def create
    @short = Short.new(short_params)

    respond_to do |format|
      if @short.save
        @short.id 
        @short.short = @short.id
        format.html { redirect_to @short, notice: 'Short was successfully created.' }
        format.json { render :show, status: :created, location: @short }
      else
        format.html { render :new }
        format.json { render json: @short.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shorts/1
  # PATCH/PUT /shorts/1.json
  

  # DELETE /shorts/1
  # DELETE /shorts/1.json
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_short
      @short = Short.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def short_params
      params.require(:short).permit(:long)
    end
end
