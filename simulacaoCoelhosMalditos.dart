void main() {
  int jovens = 2;
  int adultos = 0;
  int mesAtual = 1;

  while (mesAtual <= 12) {
    adultos += jovens;
    jovens = adultos;

    print(
        "Fim do Mês $mesAtual: População de coelhos: ${jovens + adultos}, Jovens: $jovens, Adultos: $adultos");

    mesAtual++;
  }

  // predador
  double taxaDeReducao = 0.75;
  while (mesAtual <= 24) {
    int totalCoelhos = jovens + adultos;
    int totalReduzido = (totalCoelhos * (1 - taxaDeReducao)).toInt();

    if (totalReduzido > 0) {
      double proporcaoJovens = jovens / totalCoelhos;
      double proporcaoAdultos = adultos / totalCoelhos;

      jovens = (totalReduzido * proporcaoJovens).toInt();
      adultos = (totalReduzido * proporcaoAdultos).toInt();
    } else {
      jovens = 0;
      adultos = 0;
    }

    print(
        "Fim do Mês $mesAtual: População de coelhos: ${jovens + adultos}, Jovens: $jovens, Adultos: $adultos");

    mesAtual++;
  }
}
