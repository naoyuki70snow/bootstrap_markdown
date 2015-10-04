class CreateMdEditors < ActiveRecord::Migration
  def change
    create_table :md_editors do |t|
      t.text :markdown

      t.timestamps null: false
    end
  end
end
