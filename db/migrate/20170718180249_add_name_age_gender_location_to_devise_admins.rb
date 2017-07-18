class AddNameAgeGenderLocationToDeviseAdmins < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :name, :string
    add_column :admins, :age, :integer
    add_column :admins, :gender, :integer
    add_column :admins, :location, :string
  end
end
