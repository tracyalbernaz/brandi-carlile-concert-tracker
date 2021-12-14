class CreateConcerts < ActiveRecord::Migration[6.1]
  def change
    create_table :concerts do |t|
      t.string :artist_name, null: false
      t.string :coheadliner_name
      t.string :opener_name_1
      t.string :opener_name_2
      t.string :festival_name
      t.string :venue_name, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.date :date, null: false
      

      t.timestamps null: false
    end
  end
end

