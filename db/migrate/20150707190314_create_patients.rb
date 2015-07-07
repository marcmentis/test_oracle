class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :firstname
      t.string :lastname
      t.string :identifier

      t.timestamps
    end
  end
end
