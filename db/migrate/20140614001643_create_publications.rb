class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :publication_name
      t.integer :place_id
      t.string :rss_url

      t.timestamps
    end
  end
end
