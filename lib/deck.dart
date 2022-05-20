import 'cards.dart';

class Deck {
  List<Card> cards = [];
  var ranks = ['aaa', 'bbbb', 'cccc'];
  var suits = ['1111', '222', '333', '444'];

  Deck() {
    for (var suit in suits) {
      for (var rank in ranks) {
        //    عند الانتهاء اللوب من الدوران الداخلية والخارية  يستدعي الكنستركتور الخاص ب  كارد

        var card = Card(rank,
            suit); // وكل ما تم توليد بطاقة اضعها في متغير مرجعي سميته card
        cards.add(
            card); //وضع جميع البطاقات اوobject   التى تم توليدها ضمن القائمة cards
      }
    }
  }

  @override
  String toString() {
    return cards
        .toString(); //  هنا اطلب من الدالة ان تعيد لي محتويات القائمة الرئيسية والتي اسمها cards  وتحويلها الى string
  }
}
