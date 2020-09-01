class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :id
      t.integer :userId
      t.integer :movieId
      t.integer :cityId
      t.datetime :date

      t.timestamps
    end
  end
end
