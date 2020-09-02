class CreateShippingorders < ActiveRecord::Migration[5.0]
  def change
    create_table :shippingorders do |t|
      t.string :ourref
      t.string :fromcomp
      t.string :yourref
      t.string :shippingline
      t.string :containerno
      t.string :isocode
      t.string :festatus
      t.string :sealno
      t.string :blno
      t.string :drivername
      t.string :trucknumber
      t.string :driverid
      t.string :truckcompany
      t.string :condition

      t.timestamps
    end
  end
end
