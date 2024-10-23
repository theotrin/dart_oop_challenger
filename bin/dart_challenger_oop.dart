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

  Guerreiro guerreiro = Guerreiro(
    'Aragorn',
    'Humano',
    "Excalibur",
    "Guerreiro",
    87,
    1.85,
    false,
    120,
    30,
    ['Golpe Duplo', 'Corte Rápido'],
  );

  // Simulando um combate
  mago.atacar(guerreiro);
  guerreiro.atacar(mago);
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

class Guerreiro extends Personagem implements Combate {
  String espada;

  Guerreiro(super.nome, super.raca, this.espada, super.classe, super.idade,
      super.altura, super.magico, super.vida, super.energia, super.skills);

  @override
  void atacar(Personagem alvo) {
    print("$nome ataca $alvo.nome com um golpe físico!");
    alvo.vida -= 8;
    print("${alvo.nome} agora tem ${alvo.vida} de vida.");
  }
}

class Mago extends Personagem implements Combate {
  Mago(String nome, String raca, int idade, double altura, int vida,
      int energia, List<String> skills)
      : super(nome, raca, 'Mago', idade, altura, true, vida, energia, skills);

  void lancarFeitico(String nomeFeitico) {
    print("$nome está lançando o feitiço: $nomeFeitico!");
  }

  @override
  void atacar(Personagem alvo) {
    print("$nome ataca $alvo.nome com um feitiço!");
    alvo.vida -= 10;
    print("${alvo.nome} agora tem ${alvo.vida} de vida.");
  }
}

abstract class Combate {
  void atacar(Personagem alvo);
}
