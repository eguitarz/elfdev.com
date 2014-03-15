class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
    	t.string :purpose, :null => false
    	t.string :budget, :null => false
    	t.string :description, :null => false
    	t.string :name, :null => false
    	t.string :email, :null => false
    	t.string :phone
      t.timestamps
    end
  end
end
