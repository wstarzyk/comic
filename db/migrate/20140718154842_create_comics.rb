class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.string :title
      t.string :publisher
      t.string :writer
      t.string :cover

      t.timestamps
    end
  end
end
