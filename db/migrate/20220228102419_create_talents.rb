class CreateTalents < ActiveRecord::Migration[6.1]
  def change
    create_table :talents do |t|
      t.string :name
      t.string :address
      t.string :description
      t.string :youtube_link
      t.string :instagram_link
      t.string :spotify_link
      t.integer :price

      t.timestamps
    end
  end
end
