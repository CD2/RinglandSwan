class Admin::BookingsController < AdminController

  def index
    @bookings = Booking.all.order(created_at: :asc)
  end
  
  def show
    @booking = Booking.find(params[:id])
  end
  
  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to admin_bookings_url
  end
  
end
