class AddColToPatients < ActiveRecord::Migration[5.2]
  def change
    add_column :patients, :appointment_time, :datetime
  end
end
