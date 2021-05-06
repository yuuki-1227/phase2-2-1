class RemovePostslFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :postsl_code, :integer
  end
end
