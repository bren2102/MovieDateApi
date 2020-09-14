class AddMovieToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :movie_name, :string
    add_column :appointments, :price, :float
    add_column :appointments, :city_name, :string
  end
end
