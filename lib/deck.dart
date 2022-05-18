import 'cards.dart';

class Deck {
  List<Card> cards = [];
  var ranks = ['aaa', 'bbbb', 'cccc'];
  var suits = ['1111', '222', '333', '444'];

  deck() {
    for (var suit in suits) {
      for (var rank in ranks) {
        var card = Card(rank, suit);
        cards.add(card);
      }
    }
  }

  @override
  String toString() {
    return cards.toString();
  }
}
