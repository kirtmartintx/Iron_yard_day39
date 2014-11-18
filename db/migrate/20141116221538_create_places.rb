class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
    t.string :name
    t.string :city
    t.integer :lat
    t.integer :lng
      t.timestamps null: false
    end
  end
end
