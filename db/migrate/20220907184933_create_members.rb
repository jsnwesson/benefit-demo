class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :birthdate
      t.submitter :boolean

      t.references :aid_application, foreign_key: true
      t.timestamps
    end
  end
end
