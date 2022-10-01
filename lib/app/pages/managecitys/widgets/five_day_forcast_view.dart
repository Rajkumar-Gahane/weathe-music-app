import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:weather_app/app/app.dart';

class FiveDayForecastPageView extends StatelessWidget {
  const FiveDayForecastPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetBuilder<ManageCityController>(
        builder: (_controller) => SafeArea(
          child: Scaffold(
            // extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              title: Text(
                'Five Day Forcast Map',
                style: Styles.mediumWhite16,
              ),
            ),
            body: Center(
              child: Container(
                color: Colors.white,
                child: SfCartesianChart(
                  enableSideBySideSeriesPlacement: false,
                  legend: Legend(isVisible: true,position: LegendPosition.top),
                  // backgroundColor: ColorsValue.approvedColor,
                  primaryXAxis: CategoryAxis(),
                  series: <CartesianSeries>[
                    ColumnSeries<ChartData, String>(
                      emptyPointSettings: EmptyPointSettings(
                        borderColor: Colors.black,
                        color: ColorsValue.blackCardColor,
                        borderWidth: 1
                      ),
                      // opacity: 0,
                      color: ColorsValue.greenLightColor,
                      dataSource: _controller.chartData,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) =>
                          double.parse(data.y.toString()),
                      sortingOrder: SortingOrder.descending,
                      // Sorting based on the specified field
                      sortFieldValueMapper: (ChartData data, _) => data.x,
                      // pointColorMapper: (ChartData data,_)=>data.color,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
