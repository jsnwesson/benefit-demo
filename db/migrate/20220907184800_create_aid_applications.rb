class CreateAidApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :aid_applications do |t|
      t.has_many :secondary_member, class_name: "Member"
      t.has_one :primary_member, class_name: "Member"

      t.string :address
      t.integer :phone_number
      t.string :email_address
      t.string :primary_member
      t.string :secondary_member

      t.timestamps
    end
  end
end
