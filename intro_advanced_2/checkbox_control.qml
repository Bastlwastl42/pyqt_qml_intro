import QtQuick.Controls
import QtQuick


ApplicationWindow {
    width: 640; height: 480;
    visible: true
    title: 'Checkbox Signal Example'

    Column {
        anchors.centerIn: parent
        CheckBox {
            checked: true
            text: "Python"
            font.pixelSize: 15
            onClicked: {
                label.text = `${label.text}\n${this.text}: ${this.enabled}`
            }
        }
        CheckBox {
            text: "Java"
            font.pixelSize: 15
            onClicked: {
                label.text = `${label.text}\n${this.text}: ${this.enabled}`
            }
        }

        CheckBox {
            text: "C++"
            checked: true
            font.pixelSize: 15
            onClicked: {
                label.text = `${label.text}\n${this.text}: ${this.enabled}`
            }
        }
        Label {
            id: label
            text: "Python Course"
            font.pixelSize: 20
            color: "red"
        }

    }
}