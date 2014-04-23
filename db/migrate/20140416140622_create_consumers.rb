class CreateConsumers < ActiveRecord::Migration
  def change
    create_table :consumers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :email
      t.string :phone
      t.string :city
      t.string :state
      t.string :zip
      t.string :home
      t.string :timeframe
      t.string :reason

      t.timestamps
    end
  end
end
