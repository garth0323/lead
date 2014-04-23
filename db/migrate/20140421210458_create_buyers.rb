class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :city
      t.string :max_price
      t.string :beds
      t.string :baths
      t.string :state      
      t.string :home
      t.string :timeframe      

      t.timestamps
    end
  end
end
