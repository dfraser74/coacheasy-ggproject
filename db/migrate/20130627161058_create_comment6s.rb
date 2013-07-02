class CreateComment6s < ActiveRecord::Migration
  def change
    create_table :comment6s do |t|
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
