class AddEmailToUserDev < ActiveRecord::Migration[5.2]
  def change
    add_column :user_devs, :email, :string
  end
end
