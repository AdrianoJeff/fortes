# fortes

Um programa simples de cadastro de abastecimentos.

Configurações:
- Firebird 2.5;
- O banco está no arquivo ABASTECIMENTO.FDB e o mesmo deve ficar na mesma pasta do executável;
- Basta executar o programa.

O CRUD foi feito a partir de uma classe base TfrmCRUDModelo. Cada cadastro herda dessa classe as respectivas funções. Usei dbExpress para a conexão com o banco.

Tentei deixar as classes com o mínimo de acoplamento possível.

O relatório não ficou muito de acordo com as boas práticas de OO. Pode ser bastante melhorado.

Não tive tempo de fazer as validações dos campos, use '.' em vez de ',' nos campos de ponto flutuante.

Não fiz os testes unitários, esse é um ponto fraco meu que precisa ser melhorado.
