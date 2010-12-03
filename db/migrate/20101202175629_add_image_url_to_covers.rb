class AddImageUrlToCovers < ActiveRecord::Migration
  def self.up
    add_column :covers, :image_url_file_name, :string
    add_column :covers, :image_url_content_type, :string
    add_column :covers, :image_url_file_size, :integer
  end

  def self.down
    remove_column :covers, :image_url_file_size
    remove_column :covers, :image_url_content_type
    remove_column :covers, :image_url_file_name
  end
end
