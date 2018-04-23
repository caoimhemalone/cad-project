class RemoveColFromPatients < ActiveRecord::Migration[5.2]
  def change
    remove_column :patients, :dob, :datetime
  end
end
