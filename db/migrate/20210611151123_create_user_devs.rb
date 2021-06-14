class CreateUserDevs < ActiveRecord::Migration[5.2]
  def change
    create_table :user_devs do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :password_confirmation
      t.string :image_url
      t.integer :locale

      t.timestamps
    end
  end
end
