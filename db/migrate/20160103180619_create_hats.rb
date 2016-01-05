class CreateHats < ActiveRecord::Migration
  def change
    create_table :hats do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
