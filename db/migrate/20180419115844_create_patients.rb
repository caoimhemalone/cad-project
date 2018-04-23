class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :firstname
      t.string :lastname
      t.datetime :dob
      t.string :address
      t.integer :phonenumber
      t.string :injury
      t.string :infection

      t.timestamps
    end
  end
end
