class InquiryMailer < ActionMailer::Base
  default from: "Elfdev<noreply@elfdev.com>"

  def notification(inquiry)
  	@inquiry = inquiry
    mail(:to => inquiry.email, :subject => "[inquiry] #{inquiry.name} sent you an email")
  end

  def receipt(inquiry)
  	@inquiry = inquiry
  	mail(:to => inquiry.email, :subject => "Your mail is recieved")
  end
end
