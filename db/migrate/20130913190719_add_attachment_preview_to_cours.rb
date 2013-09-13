class AddAttachmentPreviewToCours < ActiveRecord::Migration
  def self.up
    change_table :cours do |t|
      t.attachment :preview
    end
  end

  def self.down
    drop_attached_file :cours, :preview
  end
end
