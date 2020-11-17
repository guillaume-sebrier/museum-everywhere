class AddDurationToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :duration, :integer
  end
end
