class AddImageNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :image_name, :string, optional: true, default: "default_user.jpg"
  end
end
