import 'viagem.dart';
import 'transporte.dart';

void main() {
  Viagem viagemHoje = Viagem(Transporte.carro);
  print('Código de trabalho: ${viagemHoje.returnCodigo()}');
  viagemHoje.escolherMeioTransporte(viagemHoje.locomocao);
  viagemHoje.visitar('Brasília');
  viagemHoje.registrarPrecoVisita("Brasília", 1750);
  print(viagemHoje.registrosVisitados);
  print(viagemHoje.registrarPrecos);
}
