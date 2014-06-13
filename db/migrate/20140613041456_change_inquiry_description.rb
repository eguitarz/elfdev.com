class ChangeInquiryDescription < ActiveRecord::Migration
  def change
  	change_column :inquiries, :description, :text
  end
end
