class DecksController < ApplicationController
  before_action :authenticate_user!, :set_deck, only: [:show, :edit, :update, :destroy, :new, :index]

  respond_to :html

  def index
		if !current_user.nil? && !current_user.id.nil?
    	@decks = Deck.where('user_id': current_user.id)
    	respond_with(@decks)
		end
  end

  def show
    respond_with(@deck)
  end

  def new
    @deck = Deck.new
    respond_with(@deck)
  end

  def edit
  end

  def create
    @deck = Deck.new(deck_params)
		@deck.user_id = current_user.id
    @deck.save
    respond_with(@deck)
  end

  def update
    @deck.update(deck_params)
    respond_with(@deck)
  end

  def destroy
    @deck.destroy
    respond_with(@deck)
  end

	def sim()
		deck = Deck.find params[:id]
		deckfile = File.open "deck.txt", "w"
		deck.cards.split(',').each do |card|
			deckfile.puts card
		end
		deck.runes.split(',').each do |rune|
			deckfile.puts rune
		end
		deckfile.close
		cmd = "./sim -deck deck.txt -demon " + deck.demon_name + " > out.txt"
		outtext = File.read("out.txt").gsub(/\n/,'<br>')
		render :text => outtext
	end

  private
    def set_deck
      @deck = Deck.find(params[:id])
    end

    def deck_params
      params.require(:deck).permit(:name, :cards, :runes, :user_id, :demon_name)
    end
end
