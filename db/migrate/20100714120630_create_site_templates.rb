class CreateSiteTemplates < ActiveRecord::Migration
  def self.up
    create_table :site_templates do |t|
      t.text :layout

      t.timestamps
    end
  end

  def self.down
    drop_table :site_templates
  end
end
