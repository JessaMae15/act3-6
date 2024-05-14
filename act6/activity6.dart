class Stack<T> {
  List<T> _storage = [];

  void push(T element) {
    _storage.add(element);
  }
  T pop() {
    if (isEmpty()) {
      throw Exception('Cannot pop from an empty stack.');
    }
    return _storage.removeLast();
  }
  bool isEmpty() {
    return _storage.isEmpty;
  }
}
void main() {
  var stack = Stack<int>();
  stack.push(11);
  stack.push(12);
  stack.push(13);
  stack.push(14);
  stack.push(15);
  
  print('Popping from stack: ${stack.pop()}'); 
  print('Is stack empty? ${stack.isEmpty()}'); 
}
