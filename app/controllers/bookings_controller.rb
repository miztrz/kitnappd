class BookingsController < ApplicationController
  before_action :set_booking, except: [:new, :create]
  before_action :authenticate_user!, except: [:show]
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
    @booking.length_human = TimeDifference.between(@booking.start_time, @booking.end_time).humanize
    @booking.total = booking_charge
    respond_to do |format|
      if @booking.save
        format.html { redirect_to booking_payment_path(@booking),
                                  notice: 'Please process payment to secure your request.' }
      else
        format.html { redirect_to kitten_path(@kitten),
                                  notice: 'Error when processing Booking request. Please try again.' }
      end
    end
  end

  def update
    @booking.length_human = TimeDifference.between(@booking.start_time, @booking.end_time).humanize
    @booking.total = booking_charge
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to kitten_path(@kitten),
                                  notice: 'Booking was successfully updated.' }
      else
        format.html { redirect_to kitten_path(@kitten),
                                  notice: 'Error when processing Booking change request. Please try again.' }
      end
    end
  end

  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to kitten_path(@kitten),
                                notice: 'Booking was successfully destroyed.' }
    end
  end

  def payment

  end

  def paid
    @booking.paid = true
    respond_to do |format|
      if @booking.save
        format.html { redirect_to kitten_path(@kitten),
                                  notice: 'Thank you for your payment. Enjoy your play date.' }
      else
        format.html { redirect_to kitten_path(@kitten),
                                  notice: 'Error when processing payment. Please try again.' }
      end
    end
  end

  def confirm
    @booking.confirmed = true
    respond_to do |format|
      if @booking.save
        format.html { redirect_to kitten_path(@kitten),
                                  notice: 'Booking was successfully confirmed.' }
      else
        format.html { redirect_to kitten_path(@kitten),
                                  notice: 'Error when processing Booking confirmation. Please try again.' }
      end
    end
  end

  def owner
    @booking.owner = true
    respond_to do |format|
      if @booking.save
        format.html { redirect_to kitten_path(@kitten),
                                  notice: 'Booking was successfully completed. Payment will be released to you within 24-48 hours if the player has already confirmed completion.' }
      else
        format.html { redirect_to kitten_path(@kitten),
                                  notice: 'Error when processing Booking completion. Please try again.' }
      end
    end
  end

  def player
    @booking.player = true
    respond_to do |format|
      if @booking.save
        format.html { redirect_to kitten_path(@kitten),
                                  notice: 'Booking was successfully completed.' }
      else
        format.html { redirect_to kitten_path(@kitten),
                                  notice: 'Error when processing Booking completion. Please try again.' }
      end
    end
  end

  private

    def set_booking
      @booking = Booking.find(params[:id])
      @kitten = @booking.kitten_id
    end

    def booking_params
      params.require(:booking).permit(:kitten_id, :user_id, :length_human, :start_time, :end_time, :total,
                                      :paid, :confirmed, :owner, :player)
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
