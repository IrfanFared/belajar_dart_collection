class Node {
  int data;
  Node? next; // Pointer untuk node berikutnya

  Node(this.data);
}

class LinkedList {
  Node? head; // Awal dari linked list

  // Menambahkan node baru di akhir linked list
  void add(int data) {
    var newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      var current = head;
      while (current?.next != null) {
        current = current?.next;
      }
      current?.next = newNode;
    }
  }

  // Menampilkan seluruh data di linked list
  void printList() {
    var current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  var list = LinkedList();
  list.add(10);
  list.add(20);
  list.add(0);

  print("Isi Linked List:");
  list.printList(); // Output: 10, 20, 30
}
