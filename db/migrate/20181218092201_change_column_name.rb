class ChangeColumnName < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :reviews, :overall_rating, :average_rating
  end
end
