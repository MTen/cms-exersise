class Portfolio < ActiveRecord::Migration
  def change
  	create_table :portfolios do |t|
  		t.string :project_type
  		t.attachment :img_src
  		t.string :img_class
  		t.string :img_alt
  		t.string :title
  		t.text :description	
  	end
  end
end
