import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
    id: root

    property int vt: 340
    property int peep: 10
    property int oxy: 21

    Column {
        anchors.fill: parent
        spacing: 22

        Image {
            width: 232
            height: 86
            source: "qrc:///images/current-mode.png"
            anchors.left: parent.left; anchors.leftMargin: 25
            //anchors.top: parent.top
        }

        Item {
            width: 270
            height: 90
            Row {
                anchors.fill: parent
                anchors.topMargin: 5


                Button {
                    id: btnVTMinus
                    width: 70
                    height: parent.height
                    contentItem: Image {
                        source: btnVTMinus.pressed ?
                            ("qrc:///images/btn-remove-down.png") :
                            ("qrc:///images/btn-remove-normal.png")

                    }
                    onClicked: root.vt--;
                    background: Rectangle {
                        opacity: 0
                    }
                }
                Item {
                    id: vt
                    width: 145
                    height: parent.height

                    Text {
                        text: root.vt.toString()
                        color: "#5BCEBD"
                        font.pixelSize: 50
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top; anchors.topMargin: 14
//                        x: 4
//                        y: 23
//                        transform: [
//                            Rotation {
//                                origin.x: vt.width / 2
//                                origin.y: vt.height / 2
//                                angle: -90
//                            }
//                        ]
                    }
                    Image {
                        anchors.horizontalCenter: parent.horizontalCenter
                        source: "qrc:///images/Vt-title.png"
                    }
                }

                Button {
                    id: btnVTPlus
                    width: 70
                    height: parent.height
                    contentItem: Image {
                        source: btnVTPlus.pressed ?
                            ("qrc:///images/btn-add-down.png") :
                            ("qrc:///images/btn-add-normal.png")

                    }
                    onClicked: root.vt++;
                    background: Rectangle {
                        opacity: 0
                    }
                }

            }
        }

        Item {
            width: 270
            height: 90
            Row {
                anchors.fill: parent
                anchors.topMargin: 5



                Button {
                    id: peepMinus
                    width: 70
                    height: parent.height
                    contentItem: Image {
                        source: peepMinus.pressed ?
                            ("qrc:///images/btn-remove-down.png") :
                            ("qrc:///images/btn-remove-normal.png")

                    }
                    onClicked: root.peep--;
                    background: Rectangle {
                        opacity: 0
                    }
                }

                Item {
                    id: peep
                    width: 145
                    height: parent.height

                    Text {
                        text: root.peep.toString()
                        color: "#5BCEBD"
                        font.pixelSize: 50
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top; anchors.topMargin: 14
//                        transform: [
//                            Rotation {
//                                origin.x: peep.width / 2
//                                origin.y: peep.height / 2
//                                //angle: -90
//                            }
//                        ]
                    }
                    Image {
                        anchors.horizontalCenter: parent.horizontalCenter
                        source: "qrc:///images/peepcpap-title.png"
                    }
                }

                Button {
                    id: peepPlus
                    width: 70
                    height: parent.height
                    contentItem: Image {
                        source: peepPlus.pressed ?
                            ("qrc:///images/btn-add-down.png") :
                            ("qrc:///images/btn-add-normal.png")

                    }
                    onClicked: root.peep++;
                    background: Rectangle {
                        opacity: 0
                    }
                }

            }
        }
        Item {
            width: 270
            height: 90
            Row {
                anchors.fill: parent
                anchors.topMargin: 5


                Button {
                    id: btnOxyMinus
                    width: 70
                    height: parent.height
                    contentItem: Image {
                        source: btnOxyMinus.pressed ?
                            ("qrc:///images/btn-remove-down.png") :
                            ("qrc:///images/btn-remove-normal.png")

                    }
                    onClicked: root.oxy--;
                    background: Rectangle {
                        opacity: 0
                    }
                }

                Item {
                    id: oxy
                    width: 145
                    height: parent.height

                    Text {
                        text: root.oxy.toString()
                        color: "#5BCEBD"
                        font.pixelSize: 50
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top; anchors.topMargin: 14
//                        transform: [
//                            Rotation {
//                                origin.x: oxy.width / 2
//                                origin.y: oxy.height / 2
//                                //angle: -90
//                            }
//                        ]
                        //Behavior on text { NumberAnimation { duration: 500} }
                    }
                    Image {
                        anchors.horizontalCenter: parent.horizontalCenter
                        source: "qrc:///images/Oxygen-title.png"
                    }
                }

                Button {
                    id: btnOxyPlus
                    width: 70
                    height: parent.height
                    contentItem: Image {
                        source: btnOxyPlus.pressed ?
                            ("qrc:///images/btn-add-down.png") :
                            ("qrc:///images/btn-add-normal.png")

                    }
                    onClicked: root.oxy++;
                    background: Rectangle {
                        opacity: 0
                    }
                }
            }
        }
    }
}

