class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :check_user, only: [:edit, :update, :destroy]

  # def index
  #   @kittens = Kitten.where(user_id: current_user.id).order(active: :desc)
  #   @bookings_in = Booking.joins(:kitten).where(bookings: { kitten_id: @kittens.ids} )
  #   @bookings_out = Booking.where(user_id: current_user.id)
  # end

  def show
  end

  def new
    @booking = Booking.new
  end

  def edit
  end

  def create
    @kitten = Kitten.find(params[:kitten_id])
    @booking = @kitten.bookings.build(booking_params)
    @booking.user_id = current_user.id
    @booking.title = TimeDifference.between(@booking.start_time, @booking.end_time).humanize
    @booking.total = booking_charge
    respond_to do |format|
      if @booking.save
        format.html { redirect_to kitten_path(@kitten), notice: 'Booking request was successfully created.' }
        format.json { render :show, status: :created, location: @kitten }
      else
        format.html { redirect_to kitten_path(@kitten), notice: 'Error when processing Booking request. Please try again.' }
        format.json { render :show, status: :unprocessable_entity, location: @kitten }
      end
    end
  end

  def update
    @kitten = Kitten.find(params[:kitten_id])
    @booking = @kitten.bookings.build(booking_params)
    @booking.user_id = current_user.id
    @booking.title = TimeDifference.between(@booking.start_time, @booking.end_time).humanize
    @booking.total = booking_charge
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to kitten_path(@kitten), notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { redirect_to kitten_path(@kitten), notice: 'Error when processing Booking change request. Please try again.' }
        format.json { render :show, status: :unprocessable_entity, location: @kitten }
      end
    end
  end

  def destroy
    @kitten = Kitten.find(params[:kitten_id])
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to kitten_path(@kitten), notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_booking
      @booking = Booking.find(params[:id])
    end

    def booking_params
      params.require(:booking).permit(:kitten_id, :user_id, :title, :start_time, :end_time, :accepted, :total)
    end

  def check_user
    unless current_user.id == @booking.user_id or current_user.id == @booking.kitten.user_id
      redirect_to root_url, alert: "You are not authorised for this action."
    end
  end

  def booking_charge
    TimeDifference.between(@booking.start_time, @booking.end_time).in_days.ceil * @booking.kitten.daily_rate
  end

end
