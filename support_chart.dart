import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class _LineChart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LineChart(sampleData1);
  }

  LineChartData get sampleData1 => LineChartData(
    lineTouchData: lineTouchData1,
    gridData: gridData,
    titlesData: titlesData1,
    borderData: borderData,
    lineBarsData: lineBarsData1,
    minX: 0,
    maxX: 14,
    maxY: 4,
    minY: 0,
  );

  LineTouchData get lineTouchData1 => LineTouchData(
    touchCallback: (LineTouchResponse touchResponse) {},
    handleBuiltInTouches: true,
    touchTooltipData: LineTouchTooltipData(
      tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
    ),
  );

  FlTitlesData get titlesData1 => FlTitlesData(
    bottomTitles: bottomTitles,
    leftTitles: leftTitles(
      getTitles: (value) {
        switch (value.toInt()) {
          case 1:
            return '10%';
          case 2:
            return '20%';
          case 3:
            return '30%';
          case 4:
            return '40%';
        }
        return '';
      },
    ),
  );

  List<LineChartBarData> get lineBarsData1 => [
    lineChartBarData1_1,
    lineChartBarData1_2,
    lineChartBarData1_3,
    lineChartBarData1_4,
  ];

  SideTitles leftTitles({required GetTitleFunction getTitles}) => SideTitles(
    getTitles: getTitles,
    showTitles: true,
    margin: 5,
    reservedSize: 25,
    getTextStyles: (context, value) => const TextStyle(
      color: Color(0xff75729e),
      fontWeight: FontWeight.bold,
      fontSize: 15,
    ),
  );

  SideTitles get bottomTitles => SideTitles(
    showTitles: true,
    reservedSize: 22,
    margin: 10,
    getTextStyles: (context, value) => const TextStyle(
      color: Color(0xff72719b),
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
    getTitles: (value) {
      switch (value.toInt()) {
        case 1:
          return '5월';
        case 4:
          return '6월';
        case 7:
          return '7월';
        case 10:
          return '8월';
        case 13:
          return '9월';
      }
      return '';
    },
  );

  FlGridData get gridData => FlGridData(show: true);

  FlBorderData get borderData => FlBorderData(
    show: true,
    border: const Border(
      bottom: BorderSide(color: Color(0xff4e4965), width: 4),
      left: BorderSide(color: Colors.transparent),
      right: BorderSide(color: Colors.transparent),
      top: BorderSide(color: Color(0xff706a87), width: 1),
    ),
  );

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
    isCurved: true,
    colors: [const Color(0xfff64a72)],
    barWidth: 6,
    isStrokeCapRound: true,
    dotData: FlDotData(show: true),
    belowBarData: BarAreaData(show: false),
    spots: [
      FlSpot(1, 2.2),
      FlSpot(4, 2.1),
      FlSpot(7, 2.5),
      FlSpot(10, 2.9),
    ],
  );

  LineChartBarData get lineChartBarData1_2 => LineChartBarData(
    isCurved: true,
    colors: [const Color(0xffaa4cfc)],
    barWidth: 6,
    isStrokeCapRound: true,
    dotData: FlDotData(show: true),
    belowBarData: BarAreaData(show: false, colors: [
      const Color(0x00aa4cfc),
    ]),
    spots: [
      FlSpot(1, 2.5),
      FlSpot(4, 2.4),
      FlSpot(7, 2.4),
      FlSpot(10, 4.0),
    ],
  );

  LineChartBarData get lineChartBarData1_3 => LineChartBarData(
    isCurved: true,
    colors: const [Color(0xff27b6fc)],
    barWidth: 6,
    isStrokeCapRound: true,
    dotData: FlDotData(show: true),
    belowBarData: BarAreaData(show: false),
    spots: [
      FlSpot(1, 0.5),
      FlSpot(4, 0.5),
      FlSpot(7, 0.6),
      FlSpot(10, 2.4),
    ],
  );

  LineChartBarData get lineChartBarData1_4 => LineChartBarData(
    isCurved: true,
    colors: const [Color(0xfffc8a27)],
    barWidth: 6,
    isStrokeCapRound: true,
    dotData: FlDotData(show: true),
    belowBarData: BarAreaData(show: false),
    spots: [
      FlSpot(7, 0.2),
      FlSpot(10, 1.7),
    ],
  );
}

class LineChartSample1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LineChartSample1State();
}

class LineChartSample1State extends State<LineChartSample1> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.92,
      height: MediaQuery.of(context).size.height * 0.48,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
          colors: [
            Color(0xff2c274c),
            Color(0xff24242a),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              const Text(
                '차기 정치지도자 호감도 추세',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                '붉은색(윤석열), 보라색(이재명), 파란색(이낙연), 주황색(최재형)',
                style: TextStyle(
                  color: Color(0xff827daa),
                  fontSize: 17,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 16.0, left: 6.0),
                  child: _LineChart(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '(5월)4~6, (6월)1~3, (7월)6.29~7.1, (8월)17~19, 한국갤럽 자체조사',
                style: TextStyle(
                  color: Color(0xff827daa),
                  fontSize: 17,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                '자세한 사항은 중앙선거여론조사심의위원회 홈페이지 참조',
                style: TextStyle(
                  color: Color(0xff827daa),
                  fontSize: 17,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}