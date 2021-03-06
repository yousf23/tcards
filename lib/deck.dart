import 'cards.dart';

class Deck {
  List<Card> cards = [];
  var ranks = [
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    'Jack',
    'Queen',
    'King',
    'Ace'
  ];
  var suits = ['Spades', 'Hearts', 'Diamonds', 'Clubs'];

  Deck() {
    for (var suit in suits) {
      for (var rank in ranks) {
        //    هذا الوب مهمته الدوران على العناصر  in مهمتها عرض العناصر .عند الانتهاء اللوب من الدوران الداخلية والخارية  يستدعي الكنستركتور الخاص ب  كارد

        var card = Card(rank,
            suit); // وكل ما تم توليد بطاقة اضعها في متغير مرجعي سميته card
        cards.add(
            card); //وضع جميع البطاقات او object   التى تم توليدها  في القائمة cards
      }
    }
  }

  @override
  String toString() {
    return cards
        .toString(); //  هنا اطلب من الدالة ان تعيد لي محتويات القائمة الرئيسية والتي اسمها cards  وتحويلها الى string
  }

  //هذه دالة تقوم بتغير ترتيب العناصر
  void shuffleCards() {
    cards.shuffle();
  }

 List<Card> deal(){
    var hand = cards.sublist(0,13);
    cards= cards.sublist(13);
    return hand;
 }

 List<Card> removeCard(String ra,String su){
    cards.removeWhere((element) => element.ranko==ra&&element.suito==su);
    return cards;

 }

 List<Card> getCardRank(String ran){

    cards.retainWhere((element) => element.ranko==ran);
    return cards;
 }
}
