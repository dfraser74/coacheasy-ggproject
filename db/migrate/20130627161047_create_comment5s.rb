class CreateComment5s < ActiveRecord::Migration
  def change
    create_table :comment5s do |t|
      t.integer :program_id
      t.text :body
      t.text :resthr
      t.text :tzone
      t.text :fgf
      t.text :other

      t.timestamps
    end
  end
end
