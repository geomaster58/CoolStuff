class CreateHeyHeys < ActiveRecord::Migration[5.1]
  def change
    create_table :hey_heys do |t|
      t.string :header
      t.integer :value

      t.timestamps
    end
  end
end
