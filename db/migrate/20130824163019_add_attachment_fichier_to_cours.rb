class AddAttachmentFichierToCours < ActiveRecord::Migration
  def self.up
    change_table :cours do |t|
      t.attachment :fichier
    end
  end

  def self.down
    drop_attached_file :cours, :fichier
  end
end
