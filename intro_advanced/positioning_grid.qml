import QtQuick

Window {

    width: 640; height: 480
    visible: true
    title: 'Positioning Elements'

    Grid {
        spacing: 10
        anchors.centerIn: parent
        rows: 2
        columns: 2
        rotation: 45
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