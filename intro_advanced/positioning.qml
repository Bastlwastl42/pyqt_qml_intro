import QtQuick

Window {

    width: 640; height: 480
    visible: true
    title: 'Positioning Elements'

    Row {
        spacing: 10
        anchors.centerIn: parent
        Rectangle {
            width: 100; height: 100
            color: 'red'
            //x: 10; y: 10
        }

        Rectangle {
            width: 100; height: 100
            color: 'green'
            //x: 50; y: 50

        }
        Rectangle {
            width: 100; height: 100
            color: 'yellow'
            // x: 100; y: 100

        }
        Rectangle {
            width: 100; height: 100
            color: 'blue'
            //x: 150; y: 150

        }
    }
    Column {
        spacing: 10
        Rectangle {
            width: 100; height: 100
            color: 'red'
            //x: 10; y: 10
        }

        Rectangle {
            width: 100; height: 100
            color: 'green'
            //x: 50; y: 50

        }
        Rectangle {
            width: 100; height: 100
            color: 'yellow'
            // x: 100; y: 100

        }
        Rectangle {
            width: 100; height: 100
            color: 'blue'
            //x: 150; y: 150

        }
    }
}