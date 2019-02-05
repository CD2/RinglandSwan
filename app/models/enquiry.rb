class Enquiry < ApplicationRecord

  # validate :reject_if_casino_or_drugs

  # def reject_if_casino_or_drugs
  #   if message =~ /(casino)|(slots)|(viagra)|(nigeria)|(http)|(bit\.ly)|(www\.)|(we are not spammers)|(SEO)|(captcha)|(\<a)|(href)|(\p{Han})|(\p{Cyrillic}+)|(Unsubscribe)|(opt-out)/
  #     errors.add(:comment, 'is spam or written by robot or generally unrelated')
  #   end
  # end
end
