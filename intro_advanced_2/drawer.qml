import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    width: 640; height: 480
    visible: true
    title: 'Drawer Example'
    id: window

    Drawer {
        id: drawer
        width: 0.66 * window.width
        height:  window.height

        Label {
            text: 'Welcome to this example'
            id: content
            anchors.centerIn: parent
            font.pixelSize: 20
            transform: Translate {
                x: drawer.position * content.width * 0.33
            }
        }
        background: Rectangle {
            x: parent.width -1
            width: 1
            height: parent.height
            color: "blue"
        }
    }

}