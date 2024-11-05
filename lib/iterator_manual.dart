import 'dart:async';

void main() {
  // Mendefinisikan sebuah Iterable
  Iterable<int> numbers = [10, 20, 30, 40, 50];

  // Mendapatkan iterator dari Iterable
  Iterator<int> iterator = numbers.iterator;

  // Menggunakan while loop untuk mengiterasi elemen
  while (iterator.moveNext()) {
    // Mengakses elemen saat ini
    print(iterator.current);
  }

  var ratings = [1, 2, 3, 4, 5];
  var it = ratings.iterator;

  it.moveNext();
  print(it.current);

  it.moveNext();
  print(it.current);
  //-Irfan Iterator dalam Dart adalah antarmuka yang digunakan untuk mengakses elemen dari koleksi satu per satu. Ini memungkinkan traversal koleksi seperti list, set, dan map dengan cara yang terstruktur. Berikut adalah penjelasan mengenai tipe data iterator di Dart serta cara kerjanya.
  // while (it.moveNext()) {
  //   print(it.current);
  // }
}
