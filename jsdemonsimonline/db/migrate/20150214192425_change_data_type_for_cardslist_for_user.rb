class ChangeDataTypeForCardslistForUser < ActiveRecord::Migration
  def change
		change_column :users, :cardslist, :text
  end
end
