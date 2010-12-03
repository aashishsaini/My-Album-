class CreateTgs < ActiveRecord::Migration
  def self.up
    create_table :tgs do |t|
      t.string :name
      t.references :cover

      t.timestamps
    end
  end

  def self.down
    drop_table :tgs
  end
end
