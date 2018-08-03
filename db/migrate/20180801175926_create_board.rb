class CreateBoard < ActiveRecord::Migration[5.2]
  def change
    create_table "boards", primary_key: "id", id: :integer, default: nil, force: :cascade do |t|
      t.references :game
      t.timestamps
    end
  end
end
