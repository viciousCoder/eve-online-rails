class DenormalizeAgtAgentName < ActiveRecord::Migration
  def up
    change_table :agtAgents do |t|
      t.string :name, :limit => 200
    end
    AgtAgent.find(:all).each do |agent| 
      agent.name = agent.inv_name.itemName
      agent.save
    end
  end

  def down
    remove_column :agtAgents, :name
  end
end
