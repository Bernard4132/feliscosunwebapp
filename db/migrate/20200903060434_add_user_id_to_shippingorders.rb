class AddUserIdToShippingorders < ActiveRecord::Migration[5.0]
  def change
    add_column :shippingorders, :user_id, :integer
    add_column :shippingorders, :gate, :string
  end
end
