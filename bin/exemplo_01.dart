class Pessoa {
  int? id;

  void funcao() {
    print('Teste de função!');
  }
}

mixin Coder on Pessoa {
  void code() {
    print('Codificar!');
  }

  @override
  void funcao() {
    print('Teste de função! NOVO!!!');
  }
}

mixin Analist on Pessoa {
  void printId() {
    print('Meu id: $id');
  }
}

class Programador extends Pessoa with Coder {}

class Analista extends Pessoa with Coder, Analist {}

void exemplo01() async {
  var pessoa1 = Pessoa();
  pessoa1.funcao();

  var pessoa2 = Programador();
  pessoa2.funcao();
  pessoa2.code();

  var pessoa3 = Analista();
  pessoa3.code();
  pessoa3.funcao();
  pessoa3.printId();
}
