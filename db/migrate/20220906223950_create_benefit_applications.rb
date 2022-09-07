class CreateBenefitApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :benefit_applications do |t|
      t.string :name

      t.timestamps
    end
  end
end
