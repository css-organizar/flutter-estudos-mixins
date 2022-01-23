class Pessoa {
  int? id;
  String? nome;
  int? idade;
  String? email;

  Pessoa({
    this.id,
    this.nome,
    this.idade,
    this.email,
  });

  void setNome(String value) {
    nome = value;
  }

  void setIdade(int value) {
    idade = value;
  }

  @override
  String toString() {
    return 'Pessoa(id: $id, nome: $nome, idade: $idade, email: $email)';
  }
}

exemplo04() {
  var pessoa = Pessoa();

  pessoa
    ..setNome('teste')
    ..setIdade(10);

  print(pessoa.toString());
}
