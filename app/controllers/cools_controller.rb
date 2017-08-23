class CoolsController < ApplicationController
  before_action :set_cool, only: [:show, :edit, :update, :destroy]

  def faq
  end  

  def testing
  end
  # GET /cools
  # GET /cools.json
  def index
    @cools = Cool.all
  end

  # GET /cools/1
  # GET /cools/1.json
  def show
  end

    

  # GET /cools/new
  def new
    @cool = Cool.new
  end

  # GET /cools/1/edit
  def edit
  end

  # POST /cools
  # POST /cools.json
  def create
    @cool = Cool.new(cool_params)

    respond_to do |format|
      if @cool.save
        format.html { redirect_to @cool, notice: 'Cool was Created!!' }
        format.json { render :show, status: :created, location: @cool }
      else
        format.html { render :new }
        format.json { render json: @cool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cools/1
  # PATCH/PUT /cools/1.json
  def update
    respond_to do |format|
      if @cool.update(cool_params)
        format.html { redirect_to @cool, notice: 'Cool Updated!!' }
        format.json { render :show, status: :ok, location: @cool }
      else
        format.html { render :edit }
        format.json { render json: @cool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cools/1
  # DELETE /cools/1.json
  def destroy
    @cool.destroy
    respond_to do |format|
      format.html { redirect_to cools_url, notice: 'Cool was Deleted!!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cool
      @cool = Cool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cool_params
      params.require(:cool).permit(:title, :body, :honest, :timeOfDay)
    end


end
