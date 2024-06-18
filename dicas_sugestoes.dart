import 'package:flutter/material.dart';

class TelaDicasSugestoes extends StatelessWidget {
  final List<Map<String, dynamic>> dicasSugestoes = [
    {
      'titulo': 'Finalização',
      'descricao': 'Use um creme de pentear adequado para o seu tipo de cacho para obter a melhor definição. '
          'Aplique o produto no cabelo úmido e amasse os fios de baixo para cima. '
          'Deixe secar naturalmente ou use um difusor para melhores resultados. '
          'Produtos recomendados: '
          '\n- Creme de Pentear TRESemmé Cachos '
          '\n- Ativador de Cachos Salon Line #TodeCacho '
          '\n- Creme para Pentear Lola Creoula',
      'icone': Icons.style,
    },
    {
      'titulo': 'Pente Ideal',
      'descricao': 'Para cachos, utilize pentes de dentes largos ou os próprios dedos para desembaraçar os fios sem danificá-los. '
          'Evite pentes finos, que podem quebrar os fios e aumentar o frizz. '
          'Desembarace o cabelo começando pelas pontas e subindo gradualmente até a raiz. '
          'Produtos recomendados: '
          '\n- Pente de Dentes Largos Marco Boni '
          '\n- Escova Michel Mercier para Cabelos Cacheados '
          '\n- Pente de Madeira Antiestático',
      'icone': Icons.brush,
    },
    {
      'titulo': 'Transição Capilar',
      'descricao': 'Durante a transição capilar, evite o uso excessivo de calor e produtos químicos. '
          'Foque em hidratação e tratamentos naturais para fortalecer os fios. '
          'Faça texturizações para igualar as duas texturas de cabelo e corte as pontas danificadas regularmente. '
          'Produtos recomendados: '
          '\n- Gelatina Transição Capilar Salon Line '
          '\n- Creme para Pentear Novex Meus Cachos de Cinema '
          '\n- Óleo de Umectação S.O.S Bomba Salon Line',
      'icone': Icons.autorenew,
    },
    {
      'titulo': 'Hidratação',
      'descricao': 'Faça hidratações semanais com máscaras específicas para o seu tipo de cabelo para manter os fios saudáveis e brilhantes. '
          'Procure ingredientes como óleo de coco, manteiga de karité e aloe vera. '
          'Aplique a máscara do comprimento às pontas e deixe agir por 20-30 minutos antes de enxaguar bem. '
          'Produtos recomendados: '
          '\n- Máscara Capilar Hidratação Profunda Pantene '
          '\n- Máscara de Tratamento Hidratação Intensa Seda Boom '
          '\n- Máscara de Hidratação Babosa + Óleo de Coco Salon Line',
      'icone': Icons.opacity,
    },
    {
      'titulo': 'Produtos Recomendados',
      'descricao': 'Utilize produtos sem sulfatos, parabenos e petrolatos para garantir a saúde do seu cabelo. '
          'Procure por shampoos, condicionadores e máscaras que sejam livres desses ingredientes agressivos. '
          'Leia sempre os rótulos dos produtos para escolher os mais adequados para o seu tipo de cabelo. '
          'Produtos recomendados: '
          '\n- Shampoo Sulfate Free Yamasterol '
          '\n- Condicionador Liberado Lola Cosmetics '
          '\n- Máscara Reconstrutora Liberada Soul Power',
      'icone': Icons.shopping_basket,
    },
    {
      'titulo': 'Corte de Cabelo',
      'descricao': 'Escolha um corte de cabelo que valorize seus cachos e que facilite a manutenção diária. '
          'Considere cortes em camadas para dar movimento e volume aos fios. '
          'Visite um cabeleireiro especializado em cabelos cacheados para obter o melhor resultado. '
          'Produtos recomendados: '
          '\n- Creme Modelador para Cachos S.O.S Cachos Salon Line '
          '\n- Ativador de Cachos Griffus Cosméticos '
          '\n- Óleo de Coco para Cachos Nazca Origem',
      'icone': Icons.content_cut,
    },
    {
      'titulo': 'Nutrição Capilar',
      'descricao': 'Além da hidratação, é importante nutrir os cabelos regularmente. '
          'Use óleos vegetais como óleo de argan, óleo de abacate e óleo de oliva. '
          'Faça umectações noturnas ou aplique o óleo diretamente nos fios e deixe agir por algumas horas antes de lavar. '
          'Produtos recomendados: '
          '\n- Óleo de Umectação Maria Natureza '
          '\n- Óleo de Argan Inoar '
          '\n- Óleo de Abacate Amend',
      'icone': Icons.local_florist,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dicas e Sugestões'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dicasSugestoes.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          dicasSugestoes[index]['icone'],
                          size: 30,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(width: 10),
                        Text(
                          dicasSugestoes[index]['titulo']!,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      dicasSugestoes[index]['descricao']!,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
