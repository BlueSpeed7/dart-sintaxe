void main() {
  escolherMeioTransporte(Transporte.skate);
  escolherMeioTransporte(Transporte.carro);

  Set<String> registrosVisitados = <String>{};
  registrosVisitados = registrarDestinos('Rio de Janeiro', registrosVisitados);
  registrosVisitados = registrarDestinos('Brasília', registrosVisitados);
  registrosVisitados = registrarDestinos('Boa Vista', registrosVisitados);
  print(registrosVisitados);

  Pessoa pessoa1 = Pessoa('Fernando', 28, true);
  print(pessoa1.toMap());

  Viagem viagemHoje = Viagem(1750);
  print('Código de trabalho: ${viagemHoje.returnCodigo()}');
  print('Preço da viagem: R\$${Viagem.preco(viagemHoje.dinheiro).toStringAsFixed(2)}');
}

class Viagem {
  static String codigoTrabalho = 'BSB001';
  double dinheiro;

  Viagem(this.dinheiro);

  returnCodigo() {
    return codigoTrabalho;
  }

  static double preco(double dinheiro) {
    double taxa = 0.15;
    return dinheiro * taxa;
  }
}

enum Transporte { carro, bike, onibus, andando, skate, aviao, patins, trem }

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

Set<String> registrarDestinos(String destino, Set<String> banco) {
  banco.add(destino);
  return banco;
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
