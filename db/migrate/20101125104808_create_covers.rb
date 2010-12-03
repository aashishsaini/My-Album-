class CreateCovers < ActiveRecord::Migration
  def self.up
    create_table :covers do |t|
      t.string :name
      t.string :image_url
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :covers
  end
end
