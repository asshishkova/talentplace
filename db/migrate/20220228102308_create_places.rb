class CreatePlaces < ActiveRecord::Migration[6.1]
  def change
    create_table :places do |t|
      t.string :title
      t.string :address
      t.string :website
      t.string :description

      t.timestamps
    end
  end
end
