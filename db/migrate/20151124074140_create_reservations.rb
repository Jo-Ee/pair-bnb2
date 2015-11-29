class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
    	t.date :check_in_date
    	t.date :check_out_date
    	t.integer :total_price
    	t.references :listing, index: true
    	t.references :user, index: true

      t.timestamps null: false

    end
  end
end
