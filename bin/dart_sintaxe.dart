import 'viagem.dart';
import 'transporte.dart';

void main() {
  Viagem viagemHoje = Viagem(Transporte.onibus);
  print('Código de trabalho: ${viagemHoje.returnCodigo}');
  viagemHoje.escolherMeioTransporte(viagemHoje.locomocao);
  viagemHoje.visitar('Brasília');
  viagemHoje.registrarPrecoVisita("Brasília", 500);
  viagemHoje.visitar('Rio de Janeiro');
  viagemHoje.registrarPrecoVisita('Rio de Janeiro', 700);
  print(viagemHoje.registrosVisitados);
  print(viagemHoje.registrarPrecos);
  print(viagemHoje.consultarTotalLocaisVisitados);
  viagemHoje.alterarLocaisVisitados = 100;
  print(viagemHoje.consultarTotalLocaisVisitados);
}
