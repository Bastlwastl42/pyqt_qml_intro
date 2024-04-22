import QtQuick
import QtQuick.Controls

ApplicationWindow {
    width: 640; height: 480
    visible: true
    title: 'PopUp Example'

    Button {
        text: "Open"
        onClicked: {
            popup.open()
        }
    }
    Popup {
        id: popup
        x: 100; y: 100
        width: 200; height: 300
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape
        contentItem: Text {
            text: 'Welcome to the jungle'

        }
        background: Rectangle {
            color: "white"
        }
    }

}