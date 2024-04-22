import QtQuick.Controls
import QtQuick
/*
Investigate this issue later. Runs with warnings

/Users/sebastian/workspace/pyqt_qml_intro/.venv/bin/python /Users/sebastian/workspace/pyqt_qml_intro/load.py
file:///Users/sebastian/workspace/pyqt_qml_intro/button.qml:23:21: QML Rectangle: The current style does not support customization of this control (property: "background" item: QQuickRectangle(0x600002e208c0, parent=0x0, geometry=0,0 100x40)). Please customize a non-native style (such as Basic, Fusion, Material, etc). For more information, see: https://doc.qt.io/qt-6/qtquickcontrols2-customize.html#customization-reference
file:///Users/sebastian/workspace/pyqt_qml_intro/button.qml:14:22: QML QQuickText: The current style does not support customization of this control (property: "contentItem" item: QQuickText(0x600002e28700, parent=0x0, geometry=0,0 0x0 ⏿)). Please customize a non-native style (such as Basic, Fusion, Material, etc). For more information, see: https://doc.qt.io/qt-6/qtquickcontrols2-customize.html#customization-reference

Process finished with exit code 0
 */

ApplicationWindow {
    width: 640; height: 480
    visible: true
    title: 'Button Example'

    Button {
        id: controls_button
        text: "Click Me"

        contentItem: Text {
            text: controls_button.text
            font: controls_button.font
            opacity: enabled ? 1.0 :0.3
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

}