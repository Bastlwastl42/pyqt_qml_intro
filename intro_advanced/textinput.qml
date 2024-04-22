import QtQuick

Window {

    width: 640; height: 480
    visible: true
    title: 'Text Input Example'
    color: "black"

    TextInput {
        id: textinput01
        text: 'Hello World'
        color: 'red'
        font.pixelSize: 20
        font.bold: true
        onAccepted: text1.text = text
    }

    Text {
        id: text1
        text: 'My Text'
        color: 'white'
        x: 20; y: 40
        font.pixelSize: 20
    }
}