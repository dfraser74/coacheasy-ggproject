class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :title
      t.text :body
      t.integer :coach_id

      t.timestamps
    end
  end
end
