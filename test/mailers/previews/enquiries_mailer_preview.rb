# Preview all emails at http://localhost:3000/rails/mailers/enquiries_mailer
class EnquiriesMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/enquiries_mailer/booking
  def booking
    EnquiriesMailer.booking
  end

  # Preview this email at http://localhost:3000/rails/mailers/enquiries_mailer/enquiry
  def enquiry
    EnquiriesMailer.enquiry
  end

end
