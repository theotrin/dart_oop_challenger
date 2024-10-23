void main() {
  List<String> skill = ["corte voraz", "lamina invisivel"];
  Personagem personagem = new Personagem(
      "Theo", "Humano", "Guerreiro", 24, 1.93, true, 100, 180, skill);

  //Mago
  Mago mago = Mago(
    'Gandalf',
    'Humano',
    300,
    1.80,
    100,
    50,
    ['Pirotecnia', 'Telecinese', 'Invisibilidade'],
  );
  mago.exibirFicha();
  mago.lancarFeitico('Fireball');

  personagem.exibirFicha();
}

class Personagem {
  String nome;
  String raca;
  String classe;
  int idade;
  double altura;
  bool magico;
  int vida;
  int energia;
  List<String> skills;

  Personagem(this.nome, this.raca, this.classe, this.idade, this.altura,
      this.magico, this.vida, this.energia, this.skills);

  void exibirFicha() {
    print("===Detalhes do personagem===");
    print(
        "Nome: $nome, Idade: $idade, Altura: $altura, Raça: $raca, Classe: $classe, Vida: $vida, Energia: $energia, É magico?: $magico");

    print("===Lista de habilidade===");
    for (var habilidades in skills) {
      print(habilidades);
    }
  }
}

class Guerreiro extends Personagem {
  String espada;

  Guerreiro(super.nome, super.raca, this.espada, super.classe, super.idade,
      super.altura, super.magico, super.vida, super.energia, super.skills);
}

class Mago extends Personagem {
  Mago(String nome, String raca, int idade, double altura, int vida,
      int energia, List<String> skills)
      : super(nome, raca, 'Mago', idade, altura, true, vida, energia, skills);

  void lancarFeitico(String nomeFeitico) {
    print("$nome está lançando o feitiço: $nomeFeitico!");
  }
}
