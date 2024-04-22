import QtQuick 2.5
import QtQuick.Controls 2.5

ApplicationWindow {

    visible: true
    width: 600
    height: 400
    title: 'Simple row'

    Column {
        spacing: 10
        Rectangle {color:"red"; width:50; height:50}
        Rectangle {color:"green"; width:50; height:50}
        Rectangle {color:"blue"; width:50; height:50}

    }
}