//-Irfan  linked list adalaah sebuah struktur data yang terdidiri  dari seraangkaian  elemen
// yang di sebuh node  setipa node memimiki  dua bagian utama

//data: nilai  atau informasi di simpan  dalam  node
//pointer: referansi  ke kode node  berikutnya dalan urutanya
// arakteristik Linked List
// Beberapa karakteristik penting dari linked list adalah:
// Memori Dinamis: Linked list dapat tumbuh dan menyusut sesuai kebutuhan tanpa perlu alokasi memori statis.
// Traversal: Untuk mengakses elemen tertentu, kita harus melintasi dari node ke node, tidak seperti array yang memungkinkan akses langsung berdasarkan indeks.
// Tipe Node: Terdapat beberapa jenis linked list, termasuk:
// Singly Linked List: Setiap node hanya memiliki pointer ke node berikutnya.
// Doubly Linked List: Setiap node memiliki dua pointer, satu ke node sebelumnya dan satu ke node berikutnya.
// Circular Linked List: Node terakhir terhubung kembali ke node pertama, membentuk lingkaran

class Node<T> {
  T value; // Nilai yang disimpan
  Node<T>? next; // Pointer ke node berikutnya

  Node({required this.value, this.next});
}

class LinkedList<E> {
  Node<E>? head; // Node pertama
  Node<E>? tail; // Node terakhir

  bool get isEmpty => head == null; // Mengecek apakah linked list kosong

  void push(E value) {
    final newNode = Node(value: value);
    if (isEmpty) {
      head = newNode;
      tail = newNode;
    } else {
      tail!.next = newNode; // Menghubungkan node terakhir dengan node baru
      tail = newNode; // Memperbarui tail
    }
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    String result = '';
    Node<E>? current = head;
    while (current != null) {
      result += '${current.value} -> ';
      current = current.next;
    }
    return result + 'null'; // Menandakan akhir dari linked list
  }
}

void main() {
  final list = LinkedList<int>();
  list.push(1);
  list.push(2);
  list.push(3);

  print(list); // Output: 1 -> 2 -> 3 -> null
}
