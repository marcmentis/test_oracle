class AddFirstColumn < ActiveRecord::Migration
  def change
  	add_column :testpats, :col1, :string
  end
end
