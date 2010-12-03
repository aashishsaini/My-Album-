class CreateTggs < ActiveRecord::Migration
  def self.up
    create_table :tggs do |t|
      t.string :name
      t.references :photo

      t.timestamps
    end
  end

  def self.down
    drop_table :tggs
  end
end
