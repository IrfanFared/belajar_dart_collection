void main() {
  List nilai = <int>[
    1,
    2,
    2,
    3
  ]; //-Irfan ini adalah growable list dimana struktur data yang untuk berubah sevara dinamis
  nilai.add(12);
  print(nilai);

  final nilaiKelas1 =
      List.filled(19, 1); // ini adalah sebuah list yang daya sudah tetep

// . Fungsi filled digunakan untuk membuat fixed list dengan ukuran tertentu, di mana setiap elemen dalam daftar diisi dengan nilai awal yang sama. Berikut adalah rincian penggunaannya:

  print(nilaiKelas1);
  nilaiKelas1[1] = 3;
  print(
      nilaiKelas1); //- Irfan kita tidak bisa menambhaka sebuah velue di dala, variabel ke fix list tapi kita bisa ubah sebuah nilai di fix list
}
