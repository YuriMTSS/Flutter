// ignore_for_file: file_names

import 'dart:math';

import '../model/question_model.dart';

List<QuestionModel> questionsPort = [
  QuestionModel(
    'Assinale a alternativa em que o termo todo está empregado com o mesmo sentido que o destacado em – … o sujeito, em vez de ler o jornal todo dia… ',
    {
      'Durante o ano todo, o clima permaneceu estável na maior parte dos estados.':
          false,
      'O goleiro passou todo o jogo sentindo dor no joelho, mas fez excelentes defesas.':
          false,
      'Os alunos eram orientados a cantar o hino nacional todo início de atividades escolares.':
          true,
      'O barracão da escola de samba do bairro foi todo destruído pelo incêndio.':
          false,
      'O menino ficou todo lambuzado quando comeu algodão doce e foi repreendido pelos pais.':
          false,
    },
  ),
  QuestionModel(
    'Assinale a alternativa em que o termo grifado é uma palavra substantivada',
    {
      '"Como explicar a um pequeno que a embalagem de plástico daquele bolo…”“..”':
          true,
      '“Um dos pontos de destaque da cartilha é sobre a publicidade.”': false,
      '“Algumas dessas consequências são facilmente identificáveis…”': false,
      '“Um dos maiores desafios da contemporaneidade é reverter o cenário atual…”':
          false,
      '"Precisamos urgentemente rever o sistema atual"': false,
    },
  ),
  QuestionModel(
    'Assinale a alternativa em que o termo em destaque é uma conjunção integrante.',
    {
      '“[…] é uma conjunção de “night” (noite) e “mare”, que faz referência a espíritos malignos […]”':
          false,
      '“[…] remete àquela sensação de peso sobre o peito que só um pesadelo dos bons pode causar.”':
          false,
      ' “[…] faz referência a espíritos malignos que, para os antigos, possuíam as pessoas durante o sono.”':
          false,
      '“[…] diz muito sobre o sentimento que temos […]”': false,
      '“Além disso, Carr descobriu que pessoas que têm pesadelos constantes costumam pensar mais "fora da caixa" […]”':
          true,
    },
  ),
  QuestionModel(
    'Analisando-se morfologicamente o trecho “Morre lentamente/ Quem não viaja”, temos respectivamente:',
    {
      'Substantivo, verbo, pronome, adjetivo e preposição.': false,
      'Verbo, advérbio, pronome, advérbio e verbo.': true,
      'Adjetivo, numeral, advérbio, advérbio e pronome.': false,
      'Verbo, adjetivo, substantivo, artigo e pronome.': false,
      'Artigo, pronome, substantivo, advérbio e numeral.': false,
    },
  ),
  QuestionModel(
    'Para ligar os períodos “Não podemos achar normal que esse comportamento extremo das redes sociais migre para o mundo físico.” e “São locais de naturezas distintas e, portanto, de reações com proporções e consequências diferentes.” , mantendo a relação entre as ideias que expressam, o autor poderia empregar a conjunção',
    {
      'pois': true,
      'mas': false,
      'e': false,
      'senão': false,
      'contudo': false,
    },
  ),
  QuestionModel(
    'Na sequência, listamos novas versões para o informe da Constituição. Assinale a única estrutura que apresenta uma inadequação quanto ao aspecto da concordância.',
    {
      '“Na previdência, é necessário que se reúnam duas condições para você se aposentar: a primeira …”':
          false,
      '“Na previdência, é necessária a reunião de duas condições para você se aposentar: a primeira …”':
          false,
      ' “Na previdência, é necessário reunir duas condições para você se aposentar: a primeira …”':
          false,
      '“Na previdência, é necessário que duas condições sejam reunidas para você se aposentar: a primeira …”':
          false,
      '“Na previdência, é necessário a reunião de duas condições para você se aposentar: a primeira …”':
          true,
    },
  ),
  QuestionModel(
    'Defina variação diatópica: ',
    {
      'Forma de falar dependendo da cultura e região': true,
      'Forma adaptada de falar ao ambiente': false,
      'Forma de falar dependendo do método de criação': false,
      'Forma de se comunincar usando sinais e gestos': false,
      'Forma de falar em relação a sua etnia': false,
    },
  ),
  QuestionModel(
    'Em relação a este verso inicial de “O Rancho da Goiabada”, “Os bóias-frias quando tomam umas biritas”, é correto afirmar que ele apresenta:',
    {
      'dois verbos que concordam com a expressão “umas biritas”.': false,
      'três verbos que concordam com o termo “umas”.': false,
      'um verbo que concorda com a expressão “Os bóias-frias”': true,
      'um verbo que concorda com o termo “biritas”': false,
      'dois verbos que concordam com o termo “quando”.': false,
    },
  ),
  QuestionModel(
    'Coletivo de abelha:',
    {
      'Enxame': true,
      'Comunidade': false,
      'Cardume': false,
      'Grupo': false,
      'Rebanho': false,
    },
  ),
  QuestionModel(
    'Coletivo de gato',
    {
      'Gatarrada': false,
      'Cambada': true,
      'Gataria': false,
      'Gataiada': false,
      'Gataros': false,
    },
  ),
];


/*listaSorteada() {
  List questionsPort = [];
  for (int x = 0; x <= listSorted.length / 2; x++) {
    if (!questionsPort.contains(listSorted[x])) {
      questionsPort.add(listSorted[x]);
    }
  }

  return questionsPort;
}*/
