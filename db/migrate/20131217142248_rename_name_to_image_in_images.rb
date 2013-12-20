class RenameNameToImageInImages < ActiveRecord::Migration
  def up
  	 change_table :images do |t|
  		t.rename :name, :image
	 end
  end

  def down
  end
end
