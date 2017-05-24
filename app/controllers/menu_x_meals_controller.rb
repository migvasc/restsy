class MenuXMealsController < ApplicationController
  before_action :set_menu_x_meal, only: [:show, :edit, :update, :destroy]

  # GET /menu_x_meals
  # GET /menu_x_meals.json
  def index
    @menu_x_meals = MenuXMeal.all
  end

  # GET /menu_x_meals/1
  # GET /menu_x_meals/1.json
  def show
  end

  # GET /menu_x_meals/new
  def new
    @menu_x_meal = MenuXMeal.new
  end

  # GET /menu_x_meals/1/edit
  def edit
  end

  # POST /menu_x_meals
  # POST /menu_x_meals.json
  def create
    @menu_x_meal = MenuXMeal.new(menu_x_meal_params)

    respond_to do |format|
      if @menu_x_meal.save
        format.html { redirect_to @menu_x_meal, notice: 'Menu x meal was successfully created.' }
        format.json { render :show, status: :created, location: @menu_x_meal }
      else
        format.html { render :new }
        format.json { render json: @menu_x_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menu_x_meals/1
  # PATCH/PUT /menu_x_meals/1.json
  def update
    respond_to do |format|
      if @menu_x_meal.update(menu_x_meal_params)
        format.html { redirect_to @menu_x_meal, notice: 'Menu x meal was successfully updated.' }
        format.json { render :show, status: :ok, location: @menu_x_meal }
      else
        format.html { render :edit }
        format.json { render json: @menu_x_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menu_x_meals/1
  # DELETE /menu_x_meals/1.json
  def destroy
    @menu_x_meal.destroy
    respond_to do |format|
      format.html { redirect_to menu_x_meals_url, notice: 'Menu x meal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu_x_meal
      @menu_x_meal = MenuXMeal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_x_meal_params
      params.require(:menu_x_meal).permit(:menu_id, :meal_id, :periodo)
    end
end
