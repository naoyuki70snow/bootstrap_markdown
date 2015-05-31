class CreateMarkdowns < ActiveRecord::Migration
  def change
    create_table :markdowns do |t|
      t.text :markdown

      t.timestamps null: false
    end
  end
end
