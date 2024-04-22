import QtQuick

Window {

    width: 640
    height: 480
    title: 'Image Element'
    visible: true

    Image {
        x: 12; y: 12
        source: "image/Qt_logo_2016.svg.png"
        width: 200; height: 100
    }

}