import 'dart:io';

main() {
  bool condicao = true;
  while (condicao) {
    print('DIGITE 1 PARA INICIAR');
    var text = stdin.readLineSync();
    if (text == "sair") {
      print('PROGRAMA FINALIZADO');
      condicao = false;
    } else {
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
        var operacaoDeposito = int.parse(num2!);
        var saldofinal = saldo + operacaoDeposito;
        print("Saldo atualizado: " + saldofinal.toString());
      } else if (operacao == 2) {
        print('DIGITE O VALOR DO SAQUE');
        var num3 = stdin.readLineSync();
        var operacaoSaque = int.parse(num3!);
        var saldofinal2 = saldo - operacaoSaque;
        print("SALDO ATUALIZADO: " + saldofinal2.toString());
      }
    }
  }
}
