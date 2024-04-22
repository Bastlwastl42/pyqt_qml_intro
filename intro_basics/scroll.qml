import QtQuick 2.5
import QtQuick.Controls 2.5

ApplicationWindow {

    visible: true
    width: 600
    height: 400
    title: 'ScollView'

    CheckBox {
        checked: true
        anchors.centerIn: parent
        text: "this is just a dummy"
    }

    ScrollView {
        width: 400
        height: 200

        Label {
            text: "PYTHON"
            font.pixelSize: 224

        }
    }

}