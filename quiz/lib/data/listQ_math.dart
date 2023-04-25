// ignore_for_file: file_names

import '../model/question_model.dart';

List<QuestionModel> questionsMath = [
  QuestionModel(
    'Qual o próximo número da sequência: 2, 12, 16,17,18,19.....',
    {
      '21': false,
      '200': true,
      '22': false,
      '25': false,
      '30': false,
    },
  ),
  QuestionModel(
    'Maria tem 30 maçãs e dividiu igualmente para suas duas filhas, que horas são?',
    {
      '1 hora e 45 minutos': true,
      '13 horas e 45 minutos': false,
      '14 horas e 30 minutos': false,
      '9 horas e 27 minutos': false,
      '2 horas e 11 minutos': false,
    },
  ),
  QuestionModel(
    'Caminhando ao fim da tarde, uma senhora contou 20 casas em uma rua à sua direita. No regresso, ela contou 20 casas à sua esquerda. Quantas casas ela viu no total?',
    {
      '0': false,
      '35': false,
      '22': false,
      '40': false,
      '20': true,
    },
  ),
  QuestionModel(
    'DAVI está para VIDA, então 2023 está para: ',
    {
      '2203': false,
      '2320': true,
      '3022': false,
      '0232': false,
      '0332': false,
    },
  ),
  QuestionModel(
    'Resolva a operação 5 - 4 x 2 + 12',
    {
      '9': true,
      '14': false,
      '12': false,
      '24': false,
      '0': false,
    },
  ),
  QuestionModel(
    'Resolva a operação 10 + 15 / 5 x 3',
    {
      '11': false,
      '19': true,
      '15': false,
      '14': false,
      'Está mal formulada': false,
    },
  ),
  QuestionModel(
    'Ana escondendo 3/5 de sua idade diz ter 30 anos, qual a idade de Ana?',
    {
      '58 anos': false,
      '60 anos': false,
      '65 anos': false,
      '70 anos': false,
      '75 anos': true,
    },
  ),
  QuestionModel(
    '99%/9%:',
    {
      '11%': false,
      '110%': false,
      '1100%': true,
      '1110%': false,
      '1111%': false,
    },
  ),
  QuestionModel(
    'Em um grupo de 20 pessoas, 40% são homens e 75% das mulheres são solteiras, o número de mulheres casadas é:',
    {
      '3': true,
      '6': false,
      '7': false,
      '8': false,
      '9': false,
    },
  ),
  QuestionModel(
    'Um vestido está com 20% de desconto. Para voltar a seu preço original, quanto em porcentagem seu preço deverá ser aumentado?',
    {
      '20%': false,
      '25%': true,
      '22,5%': false,
      '20,5%': false,
      '23%': false,
    },
  ),
];
