import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/model/equipamentos.dart';

// ⚠️ ATENÇÃO: Lembre-se de importar o arquivo onde está o seu model
// import 'package:seu_projeto/model/equipamentos.dart';

void main() {
  // Cria um grupo de testes para organizar (opcional, mas recomendado)
  group('Testes do Model Equipamentos', () {
    test(
      'Deve converter um JSON (Map) em um objeto Equipamentos corretamente',
      () {
        // 1. Criar um Map simulando o retorno da API.
        final Map<String, dynamic> jsonRetornoApi = {
          "id": 101,
          "nome": "Notebook Dell",
          "marca": "Dell",
          "valor": 4500.50,
        };

        // 2. Utilizar Equipamentos.fromJson() e criar o objeto Equipamentos.
        final equipamento = Equipamentos.fromJson(jsonRetornoApi);

        // 3. Verificar todos os campos utilizando expect().
        // O expect compara o valor que está no objeto (esquerda) com o valor esperado (direita)
        expect(equipamento.id, equals(101));
        expect(equipamento.nome, equals("Notebook Dell"));
        expect(equipamento.marca, equals("Dell"));
        expect(equipamento.valor, equals(4500.50));
      },
    );

    // 🌟 Bônus: É uma ótima prática testar o caminho inverso (toJson) também!
    test(
      'Deve converter um objeto Equipamentos em um JSON (Map) corretamente',
      () {
        // Cria o objeto
        final equipamento = Equipamentos(
          id: 202,
          nome: "Monitor LG",
          marca: "LG",
          valor: 1200.00,
        );

        // Converte para Map
        final json = equipamento.toJson();

        // Verifica as chaves e valores gerados
        expect(json["id"], equals(202));
        expect(json["nome"], equals("Monitor LG"));
        expect(json["marca"], equals("LG"));
        expect(json["valor"], equals(1200.00));
      },
    );
  });
}
