class ChangeColumnReview < ActiveRecord::Migration[6.1]
  def change
    change_column :reviews, :content, :text
    add_reference :reviews, :restaurant
  end
end
