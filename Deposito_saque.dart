import 'dart:io';

main() {
  bool condicao = true;
  while (condicao) {
    print('SALDO ATUAL');
    var saldo = 100;
    print(saldo);
    print('DIGITE 1 PARA DEPOSITO OU 2 PARA SAQUE');

    var num1 = stdin.readLineSync();
    var operacao = int.parse(num1!);

    if (operacao == 1) {
      print('Deposito');
    } else if (operacao == 2) {
      print("Saque");
    }
    if (operacao == 1) {
      print("DIGITE O VALOR DO DEPOSITO");
      var num2 = stdin.readLineSync();
      var valor1 = int.parse(num2!);
      var saldofinal = operacaoDepositof(saldo, valor1);
      print("Saldo atualizado: " + saldofinal.toString());
    } else if (operacao == 2) {
      print('DIGITE O VALOR DO SAQUE');
      var num3 = stdin.readLineSync();
      var valor2 = int.parse(num3!);
      var saldofinal2 = operacaoSaquef(saldo, valor2);
      print("SALDO ATUALIZADO: " + saldofinal2.toString());
    }

    var text = stdin.readLineSync();
    if (text == "sair") {
      print('PROGRAMA FINALIZADO');
      condicao = false;
    }
  }
}

int operacaoDepositof(int saldo, int valor1) {
  return saldo + valor1;
}

int operacaoSaquef(int saldo, int valor2) {
  return saldo - valor2;
}
