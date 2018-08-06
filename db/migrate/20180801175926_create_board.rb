class CreateBoard < ActiveRecord::Migration[5.2]
  def change
    create_table "boards" do |t|
      t.references :game
      t.timestamps
    end
  end
end
