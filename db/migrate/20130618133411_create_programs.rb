class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      
      t.string :title
      
      t.date :cweekstart
      t.text :cweekcomments
      
      t.text :cday1
      t.text :cday1zone
      
      t.text :cday2
      t.text :cday2zone
      
      t.text :cday3
      t.text :cday3zone
      
      t.text :cday4
      t.text :cday4zone
      
      t.text :cday5
      t.text :cday5zone
      
      t.text :cday6
      t.text :cday6zone
      
      t.text :cday7
      t.text :cday7zone
      
      t.integer :coach_id

      t.timestamps
    end
  end
end
