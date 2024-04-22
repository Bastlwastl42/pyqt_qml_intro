import QtQuick

Rectangle {
    id: root
    //export button property
    property int key
    property alias text: label.text
    property string label
    signal clicked

    width: 116; height: 26
    property alias color: root.color
    color: 'lightsteelblue'
    border.color: "gray"


    Text {
        id: label
        anchors.centerIn: parent
        text: root.label
    }
    MouseArea {
        anchors.fill: parent

        onClicked: () => {
            const event = {
                text: root.text,
                key: root.key
            }
            operate_on_event(event)
        }
    }
}
