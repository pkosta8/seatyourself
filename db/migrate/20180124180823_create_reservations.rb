class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|

      t.string :user_id
      t.string :restaurant_id
      t.datetime :when
      t.integer :number_of_people

      t.timestamps
    end
  end
end
