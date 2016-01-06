class AddAttachmentImageToFotos < ActiveRecord::Migration
  #def change
  #  add_attachment :fotos, :image
  #end
  
  def self.up
    change_table :fotos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :fotos, :image
  end
end
