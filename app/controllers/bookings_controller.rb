class BookingsController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def new
    @page = Page.find_by(machine_name: 'book_table')
    @booking = Booking.table.new
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      EnquiriesMailer.booking(@booking).deliver_now
      if @booking.event?
        @page = Page.find_by(machine_name: 'whats_on_events')
        @events = Event.all
        render 'events/index'
      else
        redirect_to book_online_thanks_path
      end
    else
      if @booking.event?
        @page = Page.find_by(machine_name: 'whats_on_events')
        @events = Event.all
        render 'events/index'
      else
        @page = Page.find_by(machine_name: 'book_table')
        render :new
      end
    end
  end

  def thanks
    @page = Page.find_by(machine_name: 'book_table')
  end

  private
  # Only allow a trusted parameter "white list" through.
    def booking_params
      params.require(:booking).permit(:name, :telephone, :email, :number_of_people, :date, :time, :message, :event_id, :booking_type)
    end
end
