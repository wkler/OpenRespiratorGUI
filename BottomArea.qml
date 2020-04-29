import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
    id: root
    width: 950
    height: 100

    readonly property int buttonWith: 225
    property int selected: 0

    Row {
        anchors.fill: parent
        spacing: 10
        anchors.leftMargin: 10

        TableButton {
            width: buttonWith
            height: parent.height-20
            interColor: selected === 0 ? "#DCE1F3" : "#FF724B"
            iname: "Monitor"
            inamecolor: selected === 0 ? "#3C3E95" : "white"


            onClicked: {
                selected = 0
            }
        }

        TableButton {
            width: buttonWith
            height: parent.height-20
            interColor: selected === 1 ? "#DCE1F3" : "#FF724B"
            iname: "Tools"
            inamecolor: selected === 1 ? "#3C3E95" : "white"


            onClicked: {
                selected = 1
            }
        }

        TableButton {
            width: buttonWith
            height: parent.height-20
            interColor: selected === 2 ? "#DCE1F3" : "#FF724B"
            iname: "Events"
            inamecolor: selected === 2 ? "#3C3E95" : "white"


            onClicked: {
                selected = 2
            }
        }

        TableButton {
            width: buttonWith
            height: parent.height-20
            interColor: selected === 3 ? "#DCE1F3" : "#FF724B"
            iname: "System"
            inamecolor: selected === 3 ? "#3C3E95" : "white"


            onClicked: {
                selected = 3
            }
        }


    }
}

