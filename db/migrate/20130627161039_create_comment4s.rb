class CreateComment4s < ActiveRecord::Migration
  def change
    create_table :comment4s do |t|
      t.integer :program_id
      t.text :body

      t.timestamps
    end
  end
end
