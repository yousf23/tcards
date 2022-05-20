class Card {
  String ranko;
  String suito;

  Card(this.ranko, this.suito);
  @override
  String toString() {
    return '$ranko of $suito';
  }
}
