class DenormalizeNpcCorpName < ActiveRecord::Migration
  def up
    change_table :crpNPCCorporations do |t|
      t.string :name, :limit => 200
    end
    CrpNpcCorporation.find(:all).each do |corp| 
      corp.name = corp.inv_name.itemName
      corp.save
    end
  end

  def down
    remove_column :crpNPCCorporations, :name
  end
end
