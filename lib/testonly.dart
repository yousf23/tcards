main() {
  List<dynamic> you = ['yellow', 'orange', 'green', 'black', 'blue', 'pink'];
  List<dynamic> you22 = ['1', '2', '3', '4', '5', '6'];
  List<dynamic> cards = [];

  for (var you1 in you) {
    for (var you2 in you22) {
      var card = Fish(you1, you2);
      cards.add(card);
    }
  }

  print(cards);
}

class Fish {
  String sarding;
  String bougha;

  Fish(this.sarding, this.bougha);

  @override
  String toString() {
    return '$sarding of $bougha';
  }
}
