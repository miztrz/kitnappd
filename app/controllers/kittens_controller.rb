class KittensController < ApplicationController
  before_action :set_kitten, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :check_user, only: [:edit, :update, :destroy]

  def index
    @kittens = Kitten.all
  end

  def show
  end

  def new
    @kitten = Kitten.new
  end

  def edit
  end

  def create
    @kitten = Kitten.new(kitten_params)
    @kitten.user_id = current_user.id

    respond_to do |format|
      if @kitten.save
        format.html { redirect_to @kitten, notice: 'Kitten was successfully created.' }
        format.json { render :show, status: :created, location: @kitten }
      else
        format.html { render :new }
        format.json { render json: @kitten.errors, status: :unprocessable_entity }
      end
    end
  end

  def update

    respond_to do |format|
      if @kitten.update(kitten_params)
        format.html { redirect_to @kitten, notice: 'Kitten was successfully updated.' }
        format.json { render :show, status: :ok, location: @kitten }
      else
        format.html { render :edit }
        format.json { render json: @kitten.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @kitten.destroy
    respond_to do |format|
      format.html { redirect_to kittens_url, notice: 'Kitten was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_kitten
      @kitten = Kitten.find(params[:id])
    end

    def kitten_params
      params.require(:kitten).permit(:name, :breed, :description, :hourly_rate, :daily_rate, :active, :user_id , images: [])
    end

  def check_user
    if current_user.id != @kitten.user_id
      redirect_to root_url, alert: "That is not your kitten."
    end
  end
end
