class AppwebexempsController < ApplicationController
  before_action :set_appwebexemp, only: [:show, :edit, :update, :destroy]

  # GET /appwebexemps
  # GET /appwebexemps.json
  def index
    @appwebexemps = Appwebexemp.all
  end

  # GET /appwebexemps/1
  # GET /appwebexemps/1.json
  def show
  end

  # GET /appwebexemps/new
  def new
    @appwebexemp = Appwebexemp.new
  end

  # GET /appwebexemps/1/edit
  def edit
  end

  # POST /appwebexemps
  # POST /appwebexemps.json
  def create
    @appwebexemp = Appwebexemp.new(appwebexemp_params)

    respond_to do |format|
      if @appwebexemp.save
        format.html { redirect_to @appwebexemp, notice: 'Appwebexemp was successfully created.' }
        format.json { render :show, status: :created, location: @appwebexemp }
      else
        format.html { render :new }
        format.json { render json: @appwebexemp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appwebexemps/1
  # PATCH/PUT /appwebexemps/1.json
  def update
    respond_to do |format|
      if @appwebexemp.update(appwebexemp_params)
        format.html { redirect_to @appwebexemp, notice: 'Appwebexemp was successfully updated.' }
        format.json { render :show, status: :ok, location: @appwebexemp }
      else
        format.html { render :edit }
        format.json { render json: @appwebexemp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appwebexemps/1
  # DELETE /appwebexemps/1.json
  def destroy
    @appwebexemp.destroy
    respond_to do |format|
      format.html { redirect_to appwebexemps_url, notice: 'Appwebexemp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appwebexemp
      @appwebexemp = Appwebexemp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appwebexemp_params
      params.require(:appwebexemp).permit(:nome, :id_seq, :endereco, :preco, :email)
    end
end
