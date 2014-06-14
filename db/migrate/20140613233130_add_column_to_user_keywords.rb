class AddColumnToUserKeywords < ActiveRecord::Migration
  def change
    t.integer  "user_id"
    t.integer  "keyword_id"
  end
end
