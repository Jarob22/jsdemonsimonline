class AddCardslistToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cardslist, :blob
  end
end
