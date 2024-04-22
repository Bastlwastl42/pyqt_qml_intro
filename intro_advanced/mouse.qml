import QtQuick

Window {

    width: 640
    height: 480
    visible: true
    title: 'Mouse Area'

    Rectangle {
        id: rect1
        x: 12; y: 12
        width: 76; height: 96
        color: 'red'

        MouseArea {
            id: area1
            width: parent.width; height: parent.height
            onClicked: rect2.visible = !rect2.visible
        }
    }

    Rectangle {
        id: rect2
        x: 112; y: 12
        width: 76; height: 96
        border.color: "green"
        border.width: 4
        radius: 8
    }

    Rectangle {
        id: button
        x: 12; y: 120
        width: 116; height: 26
        color: 'lightsteelblue'
        border.color: "slategrey"
        //border.width: 2

        Text {
            anchors.centerIn: parent
            text: 'Change Text'
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                status.text = "Welcome to PyQt6 Course"
                status.color = "red"
                status.font.pixelSize = 22
            }
        }
    }

    Text {
        id: status
        width: 200; height:26
        text: "Hello World"
        x: 150; y: 120
    }
}