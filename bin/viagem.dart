import 'transporte.dart';

class Viagem {
  static String codigoTrabalho = 'ALR007';
  double dinheiro = 0;
  int _totalLocaisVisitados = 0;
  Transporte locomocao;
  Set<String> registrosVisitados = <String>{};
  Map<String, dynamic> registrarPrecos = {};

  Viagem(this.locomocao);

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

  void visitar(String localVisita) {
    registrosVisitados.add(localVisita);
    _totalLocaisVisitados++;
  }

  void registrarPrecoVisita(String local, dynamic preco) {
    registrarPrecos[local] = preco;
  }

  String get returnCodigo {
    return codigoTrabalho;
  }

  int get consultarTotalLocaisVisitados {
    return _totalLocaisVisitados;
  }

  set alterarLocaisVisitados(int novaQnt) {
    if (novaQnt < 10) {
      _totalLocaisVisitados = novaQnt;
    } else {
      print('Não é possível visitar tantos lugares em tão pouco tempo.');
    }
  }
}
