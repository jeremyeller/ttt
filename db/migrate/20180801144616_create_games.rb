class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :game_number
      t.timestamps
    end

    add_index :games, :game_number
  end
end
