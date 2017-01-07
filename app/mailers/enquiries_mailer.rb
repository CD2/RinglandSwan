class EnquiriesMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiries_mailer.booking.subject
  #
  def booking booking
    @booking = booking

    mail to: "info@ringlandswan.co.uk", subject: 'Website Restaurant Booking'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiries_mailer.enquiry.subject
  #
  def enquiry enq
    @enquiry = enq

    mail to: "info@ringlandswan.co.uk", subject: 'Website Enquiry'
  end
end
