class CreateFotos < ActiveRecord::Migration
  def change
    create_table :fotos do |t|
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
