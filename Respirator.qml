import QtQuick 2.12
import QtQuick.Controls 2.12

Rectangle {
    color: "black"
    width: 1280
    height: 720

    Image {
        id: image
        source: "qrc:///images/main-bg.png"
        anchors.fill: parent
//        transform: [
//            Rotation {
//                origin.x: image.width / 2
//                origin.y: image.height / 2
//                angle: -90
//            }
//        ]
    }

    Image {
        id: pwrstate
        source: "qrc:///images/Power-state.png"
        anchors.top: parent.top; anchors.topMargin: 5
        anchors.left: parent.left; anchors.leftMargin: 20

    }

    LeftArea {
        id: leftm
        anchors.top: pwrstate.bottom
        anchors.topMargin: 7
        anchors.left: parent.left
        anchors.leftMargin: 20
//        anchors.bottom: parent.bottom
//        anchors.bottomMargin: 20
    }

    CenterArea {
        id: centerm
        anchors.left: leftm.right
        anchors.leftMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 0
        //anchors.top: leftm.top
    }

    BottomArea {
        id: bottomm
        anchors.left: parent.left
        anchors.top: centerm.bottom; anchors.topMargin: 30
    }

    RightArea {
        id: right
        anchors.top: parent.top
        anchors.left: centerm.right
    }


}
