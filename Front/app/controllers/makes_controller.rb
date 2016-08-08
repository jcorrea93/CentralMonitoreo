class MakesController < ApplicationController
  before_action :logged_in?
  before_action :set_make, only: [:show, :edit, :update, :destroy]

  # GET /makes
  # GET /makes.json
  def index
    @makes = Make.all
  end

  # GET /makes/1
  # GET /makes/1.json
  def show
  end

  # GET /makes/new
  def new
    @make = Make.new
  end

  # GET /makes/1/edit
  def edit
  end

  # POST /makes
  # POST /makes.json
  def create
    @make = Make.new(make_params)

    respond_to do |format|
      if @make.save
        format.html { redirect_to @make, notice: 'Make was successfully created.' }
        format.json { render :show, status: :created, location: @make }
      else
        format.html { render :new }
        format.json { render json: @make.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /makes/1
  # PATCH/PUT /makes/1.json
  def update
    @make = Make.new(make_params)
    @make.id = params[:id]
    respond_to do |format|
      if @make.update()
        format.html { redirect_to @make, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @make }
      else
        format.html { render :edit }
        format.json { render json: @make.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /makes/1
  # DELETE /makes/1.json
  def destroy
    @make.destroy
    respond_to do |format|
      format.html { redirect_to makes_url, notice: 'Make was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_make
      @make = Make.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def make_params
      params.require(:make).permit(:nombre, :description, :activo, :category_id)
    end
end
