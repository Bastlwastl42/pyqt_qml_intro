import QtQuick 2.5
import QtQuick.Controls 2.5

ApplicationWindow {

    visible: true
    width: 600
    height: 400
    title: 'ComboBox'

    Column {
        anchors.centerIn: parent
        spacing: 40
        Label {
            id: combolabel
            text: "Hello"
            font.pixelSize: 22
            font.bold: true
        }

        ComboBox {
            id: combo
            font.pixelSize: 20
            model: ["Python", "Java", "C++"]

            onActivated: {
                combolabel.text = "You have selected : " + combo.currentText
            }
        }

    }

}