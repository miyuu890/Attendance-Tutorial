class AddEmployeeNumber < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :emploee_number, :integer, default:0000
  end
end
