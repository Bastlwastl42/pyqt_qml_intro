import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    width: 640; height: 480
    visible: true
    title: 'Application Window'
    BusyIndicator {
        anchors.centerIn: parent
        id: indicator
    }

}