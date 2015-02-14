class AddDemonNameToDecks < ActiveRecord::Migration
  def change
    add_column :decks, :demon_name, :string
  end
end
