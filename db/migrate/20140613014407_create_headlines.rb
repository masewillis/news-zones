class CreateHeadlines < ActiveRecord::Migration
  def change
    create_table :headlines do |t|
      t.string :en_headline
      t.string :foreign_headline
      t.string :category
      t.integer :place_id
      t.string :timestamp

      t.timestamps
    end
  end
end
