class AddAttachmentUploadToImages < ActiveRecord::Migration
  def change
    add_column :images, :upload_file_name, :string
    add_column :images, :upload_content_type, :string
    add_column :images, :upload_file_size, :integer
    add_column :images, :upload_updated_at, :datetime
  end
end
