class CreateMusings < ActiveRecord::Migration
  def change
    create_table :musings do |t|
      t.string :title
      t.text :brain_burp

      t.timestamps
    end
  end
end
