class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table "games", primary_key: "id", id: :integer, default: nil, force: :cascade do |t|
      t.references :board
      t.timestamps
    end
  end
end
