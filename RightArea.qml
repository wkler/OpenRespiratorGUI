import QtQuick 2.12
import QtQuick.Controls 2.12


Item {
    id: root
    width: 310
    height: 720

    readonly property int buttonHeight: 225
    property int selected: -1


    Column {
        anchors.fill: parent
        anchors.left: root.left; anchors.rightMargin: 10
        anchors.top: root.top; anchors.topMargin: 20

        Button {
            id: buttonModes
            width: 270
            height: 90

            contentItem: Item {
                Image {
                    source: root.selected === 0 ?
                        ("qrc:///images/btn-Modes-on.png") :
                        ("qrc:///images/btn-modes-normal.png")
                }
            }

            background: Rectangle {
                opacity: 0
            }

            onClicked: {
                if ( selected === 0) {
                    selected = -1
                } else {
                    selected = 0
                }
            }
        }

        ModesWidget {
            id: modesWidget
            opacity: selected === 0 ? 1 : 0

            width: 270
            height: selected === 0 ? 430 : 0
            Behavior on height { NumberAnimation { duration: 300} }
            Behavior on opacity { NumberAnimation { duration: 300} }
        }

        Button {
            id: buttonControls
            width: 270
            height: 90

            contentItem: Item {
                Image {
                    source: root.selected === 1 ?
                        ("qrc:///images/btn-controls-on.png") :
                        ("qrc:///images/btn-controls-normal.png")
                }
            }
            onClicked: {
                if (selected === 1) {
                    selected = -1
                } else {
                    selected = 1
                }
            }
            background: Rectangle {
                opacity: 0
            }
        }

        Item {
            id: controlsWidget
            opacity: selected === 1 ? 1 : 0

            width: 270
            height: selected === 1 ? 430 : 0
            Behavior on height { NumberAnimation { duration: 300} }
            Behavior on opacity { NumberAnimation { duration: 300} }
        }

        Button {
            id: buttonAlarms
            width: 270
            height: 90

            contentItem: Item {
                Image {
                    source: buttonAlarms.pressed ?
                        ("qrc:///images/btn-Modes-on.png") :
                        ("qrc:///images/btn-modes-normal.png")
                }
            }

            onClicked: {
                if (selected === 2) {
                    selected = -1
                } else {
                    selected = 2
                }
            }

            background: Rectangle {
                opacity: 0
            }
        }
    }
}


