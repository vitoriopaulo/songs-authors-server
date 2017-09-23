class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :year
      t.string :authors

      t.timestamps
    end
  end
end
