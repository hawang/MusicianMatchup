class CreateMusicians < ActiveRecord::Migration
  def self.up
    create_table :musicians do |t|
      t.string :name
      t.string :instrument
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end

  def self.down
    drop_table :musicians
  end
end
