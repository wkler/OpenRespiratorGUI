import QtQuick 2.12
import QtQuick.Window 2.12
import QtCharts 2.3
import QtQuick.XmlListModel 2.0
import QtGraphicalEffects 1.12

Rectangle {
    //visible: true
    color: "transparent"
    property int currentIndex: -1


    ChartView {
        id: chartView
        anchors.fill: parent
        antialiasing: true
        backgroundColor: "transparent"
        theme: ChartView.ChartThemeBlueNcs
        //legend.visible: false

//        SplineSeries {
//            name: "SplineSeries"
//            XYPoint { x: 0; y: 0.0 }
//            XYPoint { x: 1.1; y: 3.2 }
//            XYPoint { x: 1.9; y: 2.4 }
//            XYPoint { x: 2.1; y: 2.1 }
//            XYPoint { x: 2.9; y: 2.6 }
//            XYPoint { x: 3.4; y: 2.3 }
//            XYPoint { x: 4.1; y: 3.1 }
//        }

//        Image {
//            id: img
//            source: "circle.png"
//            width: 100; height: 100
//            x: -10; y: 230
//            visible: true
//            Behavior on rotation {
//                NumberAnimation {
//                    duration: 800
//                    easing.type: Easing.InOutElastic;
//                    easing.amplitude: 2.0;
//                    easing.period: 1.5
//                }
//            }
//        }

        Text {
            id:txt
            width: 200; height: 20
            x: 350; y: 55
            font.pointSize: 20
            font.family: "Cambria"
            color: "#F8F8FF"
        }
    }

    XmlListModel {
        id: dummyData
        source: "dummydata.xml"
        query: "/results/row"

        XmlRole { name: "speedTrap"; query: "speedTrap/string()" }
        XmlRole { name: "driver"; query: "driver/string()" }
        XmlRole { name: "speed"; query: "speed/string()" }

        onStatusChanged: {
            if (status == XmlListModel.Ready) {
                timer.start();
            }
        }
    }

    Timer {
        id: timer
        interval: 800
        repeat: true
        triggeredOnStart: true
        running: false
        onTriggered: {
            currentIndex++;

            if (currentIndex < dummyData.count) {
                var lineSeries = chartView.series(dummyData.get(0).driver);
                if (!lineSeries) {
                    lineSeries = chartView.createSeries(ChartView.SeriesTypeSpline,
                                                        dummyData.get(0).driver);
                    chartView.axisY().min = 0;
                    chartView.axisY().max = 250;
                    chartView.axisY().tickCount = 6;
                    chartView.axisY().titleText = "value";
                    chartView.axisY().titleColor = "black"
                    chartView.axisY().titleFont = "Cambria"
                    chartView.axisX().titleText = "time";
                    chartView.axisX().titleColor = "black"
                    chartView.axisX().titleFont = "Cambria"
                    chartView.axisX().labelFormat = "%.0f";
                    lineSeries.color = "#FF724B"
                    chartView.animationOptions = ChartView.SeriesAnimations
                }

//                chartView.axisX().visible = false
//                chartView.axisY().visible = false

                lineSeries.append(dummyData.get(currentIndex).speedTrap,
                                  dummyData.get(currentIndex).speed);

                //lineSeries.

                txt.text = dummyData.get(currentIndex).speed;

                //img.rotation += 360

                if (dummyData.get(currentIndex).speedTrap > 3) {
                    chartView.axisX().max =
                            Number(dummyData.get(currentIndex).speedTrap)+1;
                } else {
                    chartView.axisX().max = 5;
                    chartView.axisX().min = 0;
                }
                chartView.axisX().tickCount = chartView.axisX().max
                                              - chartView.axisX().min + 1;
            } else {
                timer.stop();
                chartView.animationOptions = ChartView.AllAnimations;
                chartView.axisX().min = 0;
                chartView.axisX().max = dummyData.get(currentIndex - 1).speedTrap;
            }
        }
    }

//    Glow {
//        id:glow
//        anchors.fill: chartView
//        radius: 18
//        samples: 37
//        color: "#3C3E95"
//        source: chartView
//    }

//    RadialBlur {
//        anchors.fill: chartView
//        source: chartView
//        angle: 360
//        samples: 20
//    }

//    ZoomBlur {
//        anchors.fill: chartView
//        source: chartView
//        length: 80
//        samples: 20
//    }




}
