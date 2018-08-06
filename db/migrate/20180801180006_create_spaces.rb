class CreateSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table "spaces" do |t|
      t.integer "number", null: false
      t.string "value", null: false, default: '-'
      t.references :board
      t.timestamps
    end
  end
end
