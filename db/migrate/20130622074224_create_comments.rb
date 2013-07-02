class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
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
