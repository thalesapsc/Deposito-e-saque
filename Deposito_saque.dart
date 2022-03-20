import 'dart:io';

main() {
  print("SALDO INICIAL:");
  var saldo = 100;

  print(saldo);
  print("\n");

  print('DIGITE 1 PARA SAQUE OU 2 PARA DEPOSITO');

  print("DIGITE VALOR DO DEPOSITO:");

  var input = stdin.readLineSync();
  var deposito = int.parse(input!);

  int novoSaldo = operacaoDeposito(deposito, saldo);
  saldo = novoSaldo;

  print("Saldo Atualizado:" + saldo.toString());
}

int operacaoDeposito(int valorDeposito, int saldoAtual) {
  return saldoAtual + valorDeposito;
}

int operacaoSaque(int valorSaque, int saldoAtual) {
  return saldoAtual - valorSaque;
}
