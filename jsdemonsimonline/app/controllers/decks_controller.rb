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

	#This whole thing is horrible but works for the moment, MUST fix properly
	def sim()
		deck = Deck.find params[:id]
		#Create the tmp timenow folder and cp the sim into it
		timenow = Time.now.strftime('%s%N')
		Dir.mkdir timenow
		system("cp sim " + timenow)
		#Create the tmp deck file
		deckname = "deck" + timenow + ".txt"
		deckfile = File.open timenow + "/" +  deckname, "w"
		deck.cards.split(',').each do |card|
			deckfile.puts card
		end
		deck.runes.split(',').each do |rune|
			deckfile.puts rune
		end
		deckfile.close
		#Create the tmp cards file
		cardsfile = File.open timenow + "/cards.txt", "w"
		text_to_output = ""
		if current_user.cardslist == nil || current_user.cardslist.strip == ""
			text_to_output = "Please paste your cards.txt into your cardslist on the main page (navigate back to /decks)"
		else
			cardsfile.puts current_user.cardslist.gsub("\u00A0","")
			system("touch " + timenow + "/out.txt")
			cmd = "cd " + timenow + " && ./sim -deck " + deckname + " -demon " + deck.demon_name + " -level " + current_user.level.to_s + " > out.txt"
			system(cmd)
			outtext = File.read(timenow + "/out.txt").gsub(/\n/,'<br>')
			puts outtext
			#Move back to original fs position and delete the tmp folder
			system("cd -")
			#FileUtils.rm_rf(timenow)
			text_to_output = outtext
		end
		render :text => text_to_output
	end

	def save_cardslist()
		cardslist = params[:cardslist]
		current_user.cardslist = cardslist
		current_user.save!
	end

  private
    def set_deck
			if !params[:id].nil?
      	@deck = Deck.find(params[:id])
			end
    end

    def deck_params
      params.require(:deck).permit(:name, :cards, :runes, :user_id, :demon_name)
    end
end
