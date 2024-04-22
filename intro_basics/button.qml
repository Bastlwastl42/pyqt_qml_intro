import QtQuick 2.5
import QtQuick.Controls 2.5

ApplicationWindow{

    visible:true
    width:600
    height:400
    title: 'Simple Button'


    Button {
        text: 'Click ME'
        id:mybutton
        //y:70
        //x:79
        //height:40
        //width:100
        anchors.centerIn:parent
        background:Rectangle {
            implicitWidth:100
            implicitHeight:40
            color:mybutton.down ? "#d6d6d6" : "#f6f6f6"
            border.color:"#26282a"
            border.width:1
            radius:4
        }
        onClicked: {
            window.hello()
        }
    }
}