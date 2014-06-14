class AddUserIdandKeywordIdtoUserKeywords < ActiveRecord::Migration
  def change
    add_column :user_keywords, :user_id, :integer
    add_column :user_keywords, :keyword_id, :integer
  end
end
