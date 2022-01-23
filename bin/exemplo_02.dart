abstract class Example {
  void methodOne();

  int get calculate;

  void methodTwo({String message = 'teste 2'}) {
    print(message);
  }
}

class Example01 extends Example {
  @override
  void methodOne() {
    print('hello!');
  }

  @override
  int get calculate => 1;

  @override
  void methodTwo({String? message}) {
    super.methodTwo(message: 'teste 3');
  }
}

class Example02 extends Example {
  @override
  int get calculate => throw UnimplementedError();

  @override
  void methodOne() {}
}

class Example03 implements Example {
  @override
  int get calculate => throw UnimplementedError();

  @override
  void methodOne() {}

  @override
  void methodTwo({String message = 'teste 2'}) {}
}

exemplo02() {
  var exemplo01 = Example01();
  var exemplo02 = Example02();
  var exemplo03 = Example03();

  exemplo01.methodOne();
  exemplo01.methodTwo();

  exemplo02.methodOne();
  exemplo02.methodTwo();

  exemplo03.methodOne();
  exemplo03.methodTwo();
}
