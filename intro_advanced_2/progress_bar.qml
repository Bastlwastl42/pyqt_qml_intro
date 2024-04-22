import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    width: 640; height: 480
    visible: true
    title: 'Progress Bar'

    ColumnLayout {
        anchors.centerIn: parent

        ProgressBar {
            value: 0.5
            id: progres_control
            background: Rectangle {
                implicitWidth: 200
                implicitHeight: 6
                color: "#e6e6e6"
                radius: 3

            }
            contentItem: Item {
                implicitWidth: 200
                implicitHeight: 6
                Rectangle {
                    width: progres_control.visualPosition * parent.width
                    height: parent.height
                    radius: 2
                    color: '#17a71a'
                }
            }
        }
    }

}