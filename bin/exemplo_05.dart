//Conjuntos
Set<String> teste = {'aa', 'bb'};

imprimir1(int a, String b, [bool? c]) {
  print(a);
  print(b);
  if (c == true) {
    print('3');
  }
}

class Exemplo {
  int? i;
  Exemplo({
    this.i,
  });
}

const double xOrigin = 0;
const double yOrigin = 0;

class Point {
  double x = 0;
  double y = 0;

  Point(this.x, this.y);

  // Named constructor
  Point.origin()
      : x = xOrigin,
        y = yOrigin;
}

exemplo05() {
  print(teste);

  // imprimir1(1, 'b');
  // imprimir1(1, 'b', false);
  // imprimir1(1, 'b', true);

  var exemplo = Exemplo(i: 1);

  // assert(exemplo.i == 2);

  var var1 = 1;

  if (var1 is int) {
    print('É inteiro');
  }
}
