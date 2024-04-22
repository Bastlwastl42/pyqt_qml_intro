import QtQuick 2.5
import QtQuick.Controls 2.5

ApplicationWindow {

    visible: true
    width: 600
    height: 400
    title: 'Simple label'
    Column {
        spacing: 40
        anchors.centerIn: parent
        Label {
            id: mylabel
            text: "This is a label!"
            font.pixelSize: 22
            font.italic: true
            font.underline: true
            font.bold: true
        }

        Button {
            text: "Click me!"
            height: 40
            width: 100
            onClicked: {
                mylabel.text = "Text is changed"
            }
        }
    }
}
