class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :check_user, only: [:edit, :update, :destroy]

  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = Booking.all
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
  end

  # GET /bookings/1/edit
  def edit
  end

  # POST /bookings
  # POST /bookings.json
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
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_params
      params.require(:booking).permit(:kitten_id, :user_id, :title, :start_time, :end_time, :accepted, :total)
    end

  def check_user
    unless current_user.id == @booking.user_id or current_user.id == @booking.kitten.user_id
      redirect_to root_url, alert: "You are not authorised for this action."
    end
  end

  def booking_charge
    hours = TimeDifference.between(@booking.start_time, @booking.end_time).in_hours.ceil
    days = TimeDifference.between(@booking.start_time, @booking.end_time).in_days.ceil
    if hours < 10
      hours * @booking.kitten.hourly_rate
    else
      days * @booking.kitten.daily_rate
    end
  end
end
