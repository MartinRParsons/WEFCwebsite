class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :start
      t.datetime :end
      t.string :venue
      t.boolean :draft
      t.text :notes
      
      t.timestamps
    end
  end
end
