import QtQuick

Window {
    width: 640; height: 480
    visible: true
    title: "Anchors"

    Rectangle {
        width: 100; height: 100
        color: 'red'
        id: redrect
        // center
        //anchors.centerIn: parent
        //anchors.margins: 10

        // left anchors
        //anchors.left: parent.left
        //anchors.leftMargin: 8

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    Rectangle {
        width: 100; height: 100
        color: 'green'
        id: greenrect
        anchors.top: redrect.bottom
        anchors.horizontalCenter: parent.horizontalCenter

    }

}