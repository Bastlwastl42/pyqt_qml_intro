import QtQuick 2.5
import QtQuick.Controls 2.5

ApplicationWindow {

    visible: true
    width: 600
    height: 400
    title: 'Menubar'

    CheckBox {
        checked: true
        anchors.centerIn: parent
        text: "this is just a dummy"
    }

    menuBar: MenuBar {
        Menu {
            title: 'File'
            Action {
                text: 'New'
            }
            Action {
                text: 'Open'
            }
            Action {
                text: 'Save'
            }
            Action {
                text: 'Save As'
            }
        }

        Menu {
            title: 'Edit'
            Action {
                text: 'Search'
            }
            Action {
                text: 'Replace'
            }
            Action {
                text: 'Cut'
            }
            Action {
                text: 'Paste As'
            }
        }
        Menu {
            title: 'Help'
            Action {
                text: 'About'
            }

        }
    }

}