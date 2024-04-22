import QtQuick

Window {

    width: 640
    height: 480
    visible: true
    title: 'Text Element'

    Text {
        text: 'welcome to PyQT 6 COurse'
        //anchors.centerIn: parent
        font.pixelSize: 22
        font.bold: true
        color: 'Green'
        font.family: "Times"
        x: 50; y: 50;
    }
}