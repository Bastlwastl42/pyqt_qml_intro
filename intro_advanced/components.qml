import QtQuick

Window {
    width: 640; height: 480
    visible: true
    title: 'Components'

    Row {

        spacing: 20
        ButtonBlue {
            id: button1
            //x: 100; y: 25
            text: 'Change Text'
            onClicked: {
                status.text = 'Welcome to the course'
                status.color = 'red'
                status.font.pixelSize = 20
            }
        }

        ButtonBlue {
            id: button2
            //x: 100; y: 25
            text: 'Change Text'
            onClicked: {
                status.text = 'This is different'
                status.color = 'green'
                status.font.pixelSize = 15
            }
        }
    }
    Text {
        id: status
        x: 112; y: 76
        width: 116; height: 26
        text: "PyQT6 Course"
        horizontalAlignment: Text.AlignHCenter
    }


}