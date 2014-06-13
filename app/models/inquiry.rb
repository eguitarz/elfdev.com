class Inquiry < ActiveRecord::Base
	validates :name, presence: true
	validates :description, presence: true
	validates :purpose, presence: true
	validates :email, presence: true
	validates :budget, presence: true

	after_create :send_receipt, :send_notification

	def send_receipt
		begin
      InquiryMailer.receipt(self).deliver
    rescue => e
    	puts e
      puts "Unable to deliver receipt mail to #{self.email}"
    end
	end

	def send_notification
		begin
      InquiryMailer.notification(self).deliver
    rescue => e
    	puts e
      puts "Unable to deliver notification mail to #{self.email}"
    end
	end
end
