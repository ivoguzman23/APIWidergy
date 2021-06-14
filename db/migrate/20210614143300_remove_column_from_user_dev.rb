class RemoveColumnFromUserDev < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_devs, :email, :string
  end
end
