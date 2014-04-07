class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
    t.string :url
    t.string :image
    t.string :description
  end
  end
end
