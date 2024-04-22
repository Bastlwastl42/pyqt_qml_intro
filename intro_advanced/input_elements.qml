import QtQuick

Window {

    width: 640; height: 480
    visible: true
    title: "TextField Elements"

    /*
    Rectangle {
        border.width: 2
        border.color: 'black'
        x: input1.x - this.border.width - 1
        y: input1.y - this.border.width - 1
        width: input1.width + this.border.width
        height: input1.height + this.border.width
    }
    Rectangle {
        border.width: 2
        border.color: 'black'
        x: input2.x - this.border.width - 1
        y: input2.y - this.border.width - 1
        width: input2.width + this.border.width
        height: input2.height + this.border.width
    }

    Column {
        spacing: 40
        // single line
        TextInput {
            id: input1
            //x: 8; y: 36
            width: 96; height: 20
            text: "text input 2!"
            KeyNavigation.tab: input2
        }

        //multiline
        Rectangle {
            border.width: 2
            border.color: 'black'
            TextEdit {
                id: input2
                //anchors.fill: parent
                //anchors.margins: 4
                color: 'red'
                KeyNavigation.tab: input1

            }
        }
    }*/
    Rectangle {
        width: 96; height: 96;
        color: "lightsteelblue"
        border.color: 'gray'

        TextEdit {
            id: input
            anchors.fill: parent
            focus: true
        }
    }
}