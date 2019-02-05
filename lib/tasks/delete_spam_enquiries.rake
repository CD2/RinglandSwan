# frozen_string_literal: true


task delete_spam_enquiries:  :environment do

  enquiries = Enquiry.all.each do |enquiry|
    if enquiry.message =~ /(casino)|(slots)|(viagra)|(nigeria)|(http)|(bit\.ly)|(www\.)|(we are not spammers)|(SEO)|(captcha)|(\<a)|(href)|(\p{Han})|(\p{Cyrillic}+)|(Unsubscribe)|(opt-out)/
      enquiry.destroy()
    end
  end

end
