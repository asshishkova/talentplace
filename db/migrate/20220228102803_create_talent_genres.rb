class CreateTalentGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :talent_genres do |t|
      t.references :genre, null: false, foreign_key: true
      t.references :talent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
