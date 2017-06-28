class MyListsController < ApplicationController
  before_action :set_my_list, only: [:show, :edit, :update, :destroy]
  # GET /my_lists
  # GET /my_lists.json
  def index
    @my_lists = MyList.all
  end
  # GET /my_lists/1
  # GET /my_lists/1.json
  def show
  end
  # GET /my_lists/new
  def new
    @my_list = MyList.new
    @my_list.query = "https://developers.zomato.com/api/v2.1/restaurant?res_id="+params[:id_r]
    @my_list.user_id=current_user.id
    @my_list.semana=params[:semana]
    @my_list.periodo=params[:periodo]
    @my_list.save
  end
  
  # GET /my_lists/1/edit
  
  def edit
    
  end

  # POST /my_lists
  # POST /my_lists.json
  def create
    @my_list = MyList.new(my_list_params)
    respond_to do |format|
      if @my_list.save
        format.html { redirect_to @my_list, notice: 'My list was successfully created.' }
        format.json { render :show, status: :created, location: @my_list }
      else
        format.html { render :new }
        format.json { render json: @my_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_lists/1
  # PATCH/PUT /my_lists/1.json
  def update
    respond_to do |format|
      if @my_list.update(my_list_params)
        format.html { redirect_to @my_list, notice: 'My list was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_list }
      else
        format.html { render :edit }
        format.json { render json: @my_list.errors, status: :unprocessable_entity }
      end
    end
  end
  # DELETE /my_lists/1
  # DELETE /my_lists/1.json
  def destroy
    @my_list.destroy
    respond_to do |format|
      format.html { redirect_to my_lists_url, notice: 'My list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_list
      @my_list = MyList.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def my_list_params
      params.require(:my_list).permit(:user_id, :query)
    end
end