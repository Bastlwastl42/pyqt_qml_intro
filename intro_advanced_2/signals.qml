import QtQuick.Controls
import QtQuick

ApplicationWindow {
    width: 640; height: 480
    visible: true
    title: 'signals'

    Column {
        spacing: 40
        anchors.centerIn: parent
        Button {
            id: controls_button
            text: "Click Me"

            onClicked: {
                label.text = "Welcome to the Jungle"
                label.font.PixelSize = 22
                label.color = "red"
            }

            contentItem: Text {
                text: controls_button.text
                font: controls_button.font
                opacity: enabled ? 1.0 : 0.3
                color: controls_button.down ? "red" : "green"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter

            }
            background: Rectangle {
                implicitWidth: 100
                implicitHeight: 40
                opacity: enabled ? 1 : 0.3
                border.color: controls_button.down ? "red" : "green"
                border.width: 1
                radius: 2
            }

        }
        Label {
            id: label
            text: 'Some text'
        }
    }


}