import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 1280
    height: 720
    title: qsTr("OpenRespiratorGUI")

    Respirator{
        anchors.fill: parent
        //rotation: 90
    }
}
