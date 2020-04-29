import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
    id: root
    width: 310
    height: 600

    property int ppeak: 28
    property real expMinVol: 5.1
    property int vte: 346
    property int fTotal: 15

    Timer {
        running: true
        repeat: true
        interval: 100
        onTriggered: {
            var r = Math.floor(Math.random() * 4)
            if (r === 0) {
                r = Math.floor(Math.random() * 3) - 1
                ppeak = ppeak +  r
            } else if(r === 1) {
            } else if(r === 2) {
                r = Math.floor(Math.random() * 3) - 1
                vte = vte +  r
            } else if(r === 3) {
                r = Math.floor(Math.random() * 3) - 1
                fTotal = fTotal +  r
            }
        }
    }

    Column {
        spacing: 10
        anchors.fill: parent
//        Image {
//            source: "qrc:///images/ppeak.png"
//            //anchors.bottom: parent.bottom


//        }

        ParamCard {
            width: 310
            color: "#3C3E95"
            radius: 10
            pname: "Ppeak"
            pvalue: ppeak
            punit: "cmH2O"

        }

        ParamCard {
            width: 310
            color: "#3C3E95"
            radius: 10
            pname: "ExpMinVol"
            pvalue: expMinVol
            punit: "l/min"

        }

        ParamCard {
            width: 310
            color: "#3C3E95"
            radius: 10
            pname: "VTE"
            pvalue: vte
            punit: "ml"

        }

        ParamCard {
            width: 310
            color: "#3C3E95"
            radius: 10
            pname: "fTotal"
            pvalue: fTotal
            punit: "b/min"

        }


    }
}
