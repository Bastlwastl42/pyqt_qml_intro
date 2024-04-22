import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    width: 640; height: 480
    visible: true
    title: 'Overlay Example'

    ColumnLayout {
        anchors.centerIn: parent

        Button {
            text: 'click'
            onClicked: popup2.open()
        }

        Popup {
            id: popup
            parent: Overlay.overlay
            width: 100
            height: 100
            x: Math.round((parent.width -width) /2)
            y: Math.round((parent.height -height) /2)

        }

        Popup {
            id: popup2
            width: 400
            height: 400
            modal: true
            visible: false
            Overlay.modal: Rectangle {
                color: "#aacfdbe7"
            }

        }
    }


}