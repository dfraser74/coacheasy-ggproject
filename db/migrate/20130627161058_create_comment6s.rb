class CreateComment6s < ActiveRecord::Migration
  def change
    create_table :comment6s do |t|
      t.integer :program_id
      t.text :body

      t.timestamps
    end
  end
end
