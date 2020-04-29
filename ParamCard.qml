import QtQuick 2.12
import QtQuick.Controls 2.12

//Item {
    Rectangle {
        //anchors.fill: parent
        width: 310
        height: 135
        color: "#3C3E95"
        radius: 10

        property int pvalue: 0
        property string pname: "cardname"
        property string punit: "---"

        Text {
            id: value
            text: parent.pvalue.toString()
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.topMargin: 15
            anchors.rightMargin: 15
            font.pixelSize: 58
            font.family: "Cambria"
            color: "white"
//            transform: [
//                Rotation {
//                    origin.x: ppeakText.width / 2
//                    origin.y: ppeakText.height / 2
//                    //angle: -90
//                }
//            ]
        }

        Text {
            id: cardName
            text: parent.pname.toString()
            anchors.bottom: parent.bottom; anchors.bottomMargin: 20
            anchors.left: parent.left; anchors.leftMargin: 20
            font.pixelSize: 25
            font.family: "Cambria"
            color: "white"
//            transform: [
//                Rotation {
//                    origin.x: ppeakText.width / 2
//                    origin.y: ppeakText.height / 2
//                    //angle: -90
//                }
//            ]
        }

        Text {
            id: cardUnit
            text: parent.punit.toString()
            anchors.bottom: parent.bottom; anchors.bottomMargin: 20
            anchors.right: parent.right; anchors.rightMargin: 20
            font.pixelSize: 15
            font.family: "Cambria"
            color: "white"
//            transform: [
//                Rotation {
//                    origin.x: ppeakText.width / 2
//                    origin.y: ppeakText.height / 2
//                    //angle: -90
//                }
//            ]
        }
    }
//}
