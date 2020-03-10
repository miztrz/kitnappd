class BookingsController < ApplicationController
  before_action :set_booking, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :check_user, only: [:edit, :update, :destroy]

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
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to kitten_path(@kitten), notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def accept
    @kitten = Kitten.find(params[:kitten_id])
    @booking.accepted = true
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to kitten_path(@kitten), notice: 'Booking was successfully accepted.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { redirect_to kitten_path(@kitten), notice: 'Error when processing Booking acceptance. Please try again.' }
        format.json { render :show, status: :unprocessable_entity, location: @kitten }
      end
    end
  end

  def reject

  end

  def paid

  end

  private

    def set_booking
      @booking = Booking.find(params[:id])
    end

    def booking_params
      params.require(:booking).permit(:kitten_id, :user_id, :title, :start_time, :end_time, :accepted, :total, :rejected, :paid)
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
