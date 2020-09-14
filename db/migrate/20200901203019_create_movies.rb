class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.float :price
      t.string :description
      t.string :image
      t.integer :lasts

      t.timestamps
    end
  end
end
