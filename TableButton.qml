import QtQuick 2.12
import QtQuick.Controls 2.12

Button {
//    width: buttonWith
//    height: parent.height - 20
    flat: true
    highlighted: false
    property string interColor: "#FF724B"
    property string iname: "tabName"
    property string inamecolor: "white"


    contentItem: Item {
//                Image {
//                    visible: selected === 0
//                    source: "qrc:///images/btn-Monitoring-on.png"
//                }
//                Image {
//                    visible: selected !== 0
//                    source: "qrc:///images/btn-Monitoring-normal.png"
//                }
        Rectangle {
            width: parent.width
            height: parent.height
            color: interColor
            radius: 10
            Text {
                //id: name
                anchors.centerIn: parent
                text: qsTr(iname)
                color: inamecolor
                font.pixelSize: 26
                font.bold: true
                font.family: "Cambria"
                //Behavior on color { NumberAnimation { duration: 300} }
            }
            //Behavior on color { NumberAnimation { duration: 300} }

        }
    }

    background: Rectangle {
        opacity: 0
    }

//    onClicked: {
//        selected = 0
//    }
}
