class DeleteReferencesToReview < ActiveRecord::Migration[6.0]
  def change
    remove_reference :reviews, :user
    remove_reference :reviews, :offer
    add_reference :reviews, :booking, null: false, foreign_key: true
  end
end
