class AddPostalCodeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :postsl_code, :integer
    add_column :users, :street_address, :string
  end
end
