class PossiblesController < ApplicationController
  before_action :set_possible, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, except: [:new,:create]
  # GET /possibles
  # GET /possibles.json
   def authenticate
    authenticate_or_request_with_http_basic do |username, password|
    username == ENV['USERNAMEV'] && password == ENV['PASSWORDV'] 
    end 
  end 
  def index
    @possibles = Possible.all
  end

  # GET /possibles/1
  # GET /possibles/1.json
  def show
  end

  # GET /possibles/new
  def new
    @possible = Possible.new
  end

  # GET /possibles/1/edit
  def edit
  end

  # POST /possibles
  # POST /possibles.json
  def create
    @possible = Possible.new(possible_params)

    respond_to do |format|
      if @possible.save
        format.html { redirect_to @possible, notice: 'Possible was successfully created.' }
        format.json { render :show, status: :created, location: @possible }
      else
        format.html { render :new }
        format.json { render json: @possible.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /possibles/1
  # PATCH/PUT /possibles/1.json
  def update
    respond_to do |format|
      if @possible.update(possible_params)
        format.html { redirect_to @possible, notice: 'Possible was successfully updated.' }
        format.json { render :show, status: :ok, location: @possible }
      else
        format.html { render :edit }
        format.json { render json: @possible.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /possibles/1
  # DELETE /possibles/1.json
  def destroy
    @possible.destroy
    respond_to do |format|
      format.html { redirect_to possibles_url, notice: 'Possible was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_possible
      @possible = Possible.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def possible_params
      params.require(:possible).permit(:name, :email, :ip_add, :receive)
    end
end
