function showNewCardUI() {
	$('#new_deck_content').fadeTo(200,0.5);
	$('#app_content').fadeTo(200,0.5);
	$('#new_card_ui').show();
	$('#new_card_ui').fadeIn(500);
	$('#cardname').focus();
}

function hideNewCardUI() {
	$('#new_card_ui').hide();
	$('#new_deck_content').fadeTo(200,1);
	$('#app_content').fadeTo(200,1);
}
function confirmAddCard() {
	var name = $('#cardname_')[0].value;
	var lvl = $('#cardlevel')[0].value;
	var evoskill = $('#cardevoskill_')[0].value
	if(name == "") {
		alert("You must input a name!");
		return;
	}
	else {
		var cardEntry = name + ";" + lvl + ";" + evoskill;
		var newCard = document.createElement("div");
		newCard.innerText = name + " (" + lvl + ") " + evoskill;
		doJsStyling(newCard, cardEntry);
	}
	setCardsTextValue();
	hideNewCardUI();
}
function setCardsTextValue() {
	$('#deck_cards')[0].value = "";
	$('.cardinfo').each(function(i) { 
		$('#deck_cards')[0].value += this.value;
		if(i != ($('.cardinfo').length - 1)) {
			$('#deck_cards')[0].value += ","; 
		}
	})
}

function doJsStyling(newCard, cardEntry) {
		var newCardInfo = document.createElement("input");
		var removeSpan = document.createElement("span");
		if(!cardEntry)
			cardEntry = "";
		newCard.appendChild(removeSpan);
		newCard.className = "card";
		removeSpan.innerText = " ";
		removeSpan.className = "arrow";
		$(removeSpan).bind("click", function() { this.parentNode.remove(); setCardsTextValue(); })
		newCard.appendChild(newCardInfo);
		newCardInfo.type = "hidden";
		newCardInfo.value = cardEntry;
		newCardInfo.className = "cardinfo";
		$('#cardsDiv')[0].appendChild(newCard);
}


function createCard(cardEntry) {
    var cardEntryArr = cardEntry.split(";");
    var newCard = document.createElement("div");
    newCard.innerText = cardEntryArr[0] + " (" + cardEntryArr[1] + ") " + (cardEntryArr.length > 2 ? cardEntryArr[2] : "");
		doJsStyling(newCard);
  }
