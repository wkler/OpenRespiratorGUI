import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
    id: root
    width: 630
    height: 600

    property real xScale: 1
    property real yScale: 1
    property real sign: 1

    property real threshold: 0.07
    property real lungsOpacity: 1
    property real opacityStep: 0.1
    property real opacityL: 0.0

    Timer {
        id: lungsScaler
        running: true
        repeat: true
        interval: 33

        onTriggered: {
            root.xScale += sign * 0.001
            root.yScale += sign * 0.001

            if (root.xScale > 1 + threshold) {
                sign = -1
                // opacity decreases
            }

            if (root.xScale < 1 - threshold) {
                sign = 1
                // opacity increases
            }

            //lungsOpacity = 4.28571 * root.xScale - 3.58571
            lungsOpacity = (1 - opacityL) * (( xScale - (1 - threshold) )/ (2 * threshold)) + opacityL
        }
    }

    Column {
        anchors.fill: parent
        anchors.topMargin: 30
        spacing: 38

        WaveFramework {
            width: 602
            height: 212

//            Image {
//                anchors.top: parent.top
//                anchors.topMargin: 0
//                width: 602
//                height: 212
//                source: "qrc:///images/static-graph.png"
//            }
        }

        Item {
            id: centerfrm
            width: 602
            height: 382


            Image {
                id: extra_data
//                width: 345
//                height: 300
                anchors.top: parent.top
                anchors.topMargin: 10
                anchors.left: centerfrm.left
                source: "qrc:///images/extra-data.png"
            }


            Item {
                id: lungpart
                width: 345
                height: 350
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.left: extra_data.right
                anchors.leftMargin: 50
                //x: -20
                Image {
                    id: center
                    source: "qrc:///images/center.png"
                    anchors.top: parent.top; anchors.topMargin: 0
                    anchors.horizontalCenter: lungpart.horizontalCenter
                }
                Image {
                    id: left
                    source: "qrc:///images/left.png"
                    anchors.right: center.horizontalCenter
                    anchors.rightMargin: 20
                    anchors.top: center.top
                    anchors.topMargin: 62
//                    x: -90
//                    y: 20

                    opacity: root.lungsOpacity
                    transform: Scale {
                        yScale: root.yScale
                        xScale: root.xScale
                        origin.x: left.implicitWidth / 2
                        origin.y: left.implicitHeight / 2
                    }
                }

                Image {
                    id: right
                    x: 90
                    y: 20
                    source: "qrc:///images/right.png"
                    anchors.left: center.horizontalCenter
                    anchors.leftMargin: 20
                    anchors.top: center.top
                    anchors.topMargin: 62
                    opacity: root.lungsOpacity
                    transform: Scale {
                        yScale: root.yScale
                        xScale: root.xScale
                        origin.x: right.implicitWidth / 2
                        origin.y: right.implicitHeight / 2
                    }
                }
            }

            Image {
                id: dots
                source: "qrc:///images/change-view.png"
                anchors.top: parent.top; anchors.topMargin: 0
                anchors.right: parent.right; anchors.rightMargin: 20

            }

        }
    }
}
