class AddHeadlineUrltoHeadlines < ActiveRecord::Migration
  def change
    add_column :headlines, :headline_url, :string
  end
end
