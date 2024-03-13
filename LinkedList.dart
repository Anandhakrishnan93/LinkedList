# Single LinkedList Reversal in Dart language

void main() {
    var ll = create(); // Sample create function.
    var ll1 = reverse(ll);
    print(ll1!.value); // print the values
}

class LL {
  var value = 0;
  LL? next = null;

  LL(int value, LL? next) {
    this.value = value;
    this.next = next;
  }
}

LL create() {
  var ll = LL(1, null);
  ll.next = LL(2, null);
  ll.next!.next = LL(3, null);
  ll.next!.next!.next = LL(4, null);
  return ll;
}

LL? reverse(LL head) {
  LL? current = head;
  LL? prev = null;

  while (current != null) {
    LL? temp = current.next;
    current.next = prev;
    prev = current;
    current = temp;
  }
return prev;
}


