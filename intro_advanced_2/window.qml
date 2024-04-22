import QtQuick.Controls
import QtQuick

ApplicationWindow {
    width: 640; height: 480
    visible: true
    title: "First QtQuick Window"
    background: Rectangle {
        gradient: Gradient {
            GradientStop {position: 0; color: "#ffffff"}
            GradientStop {position: 1; color: "#c1bbf9"}

        }
    }
}