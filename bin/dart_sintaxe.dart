void main() {
  escolherMeioTransporte(Transporte.bike);
  Set<String> registrosVisitados = <String>{};

  registrosVisitados = registrarDestinos('Rio de Janeiro', registrosVisitados);
  registrosVisitados = registrarDestinos('Brasília', registrosVisitados);
  registrosVisitados = registrarDestinos('Boa Vista', registrosVisitados);
  registrosVisitados = registrarDestinos('Rio de Janeiro', registrosVisitados);
  print(registrosVisitados);

  Pessoa pessoa1 = Pessoa('Fernando', 28, true);
  print(pessoa1.toMap());
}

void escolherMeioTransporte(Transporte locomocao) {
  switch (locomocao) {
    case Transporte.carro:
      print('Vou de carro para aventura.');
      break;
    case Transporte.bike:
      print('Vou de bike para aventura.');
      break;
    case Transporte.onibus:
      print('Vou de busão para aventura.');
      break;
    case Transporte.aviao:
      print('Vou de avião para aventura.');
      break;
    case Transporte.trem:
      print('Vou de trem para aventura.');
      break;
    default:
      print('Vou para aventura, isso é o que importa.');
      break;
  }
}

class Pessoa {
  String nome;
  int idade;
  bool estaAutenticada;

  Pessoa(this.nome, this.idade, this.estaAutenticada);

  Map<String, dynamic> toMap() {
    return {'nome': nome, 'idade': idade, 'estaAutenticada': estaAutenticada};
  }
}

Set<String> registrarDestinos(String destino, Set<String> banco) {
  banco.add(destino);
  return banco;
}

enum Transporte { carro, bike, onibus, andando, skate, aviao, patins, trem }
