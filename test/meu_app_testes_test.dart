import 'package:test/test.dart';
import 'package:flutter_application_2/controller/controller.dart';

void main() {
  group('Testar IMCs', () {
    var controller = Controller();

    var valuesToTest = {
      {'peso': 40.0, 'altura': 1.75}: "MAGREZA GRAVE",
      {'peso': 50.0, 'altura': 1.75}: "MAGREZA MODERADA",
      {'peso': 55.0, 'altura': 1.75}: "MAGREZA LEVE",
      {'peso': 65.0, 'altura': 1.75}: "SAUDÁVEL",
      {'peso': 80.0, 'altura': 1.75}: "SOBREPESO",
      {'peso': 95.0, 'altura': 1.75}: "OBESIDADE GRAU I",
      {'peso': 110.0, 'altura': 1.75}: "OBESIDADE GRAU II",
      {'peso': 130.0, 'altura': 1.75}: "OBESIDADE GRAU III"
    };

    valuesToTest.forEach((values, expected) {
      test('Peso: ${values['peso']} - Altura: ${values['altura']}', () {
        var result = controller.calcularImc(values['peso']!, values['altura']!);
        expect(result, expected);
      });
    });
  });
}
