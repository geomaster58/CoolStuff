class CreateLotsAStuffs < ActiveRecord::Migration[5.1]
  def change
    create_table :lots_a_stuffs do |t|
      t.string :head
      t.string :subhead
      t.text :body
      t.text :image

      t.timestamps
    end
  end
end
