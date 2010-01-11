class CreateBands < ActiveRecord::Migration
  def self.up
    create_table :bands do |t|
      t.string :name
      t.text :description
      t.string :lookfor_ints
      t.string :lookfor_gender

      t.timestamps
    end
  end

  def self.down
    drop_table :bands
  end
end
