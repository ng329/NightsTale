class ChangeReviewDatatypeInReviews < ActiveRecord::Migration[7.0]
  def change
    change_table :reviews do |t|
      t.change :content, :text
    end
  end
end
