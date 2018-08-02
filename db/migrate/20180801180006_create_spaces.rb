class CreateSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table "spaces", primary_key: "number", id: :integer, default: nil, force: :cascade do |t|
      t.string "value", null: false, default: '-'
      t.references :board
      t.timestamps
    end
  end
end
