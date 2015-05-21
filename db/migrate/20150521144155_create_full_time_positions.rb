class CreateFullTimePositions < ActiveRecord::Migration
  def change
    create_table :full_time_positions do |t|
      t.string :position
      t.string :company
      t.string :link

      t.timestamps null: false
    end
  end
end
