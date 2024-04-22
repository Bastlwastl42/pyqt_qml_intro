import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    width: 640; height: 480
    visible: true
    title: 'Dialog Button Window'

    DialogButtonBox {
        standardButtons: DialogButtonBox.Ok | DialogButtonBox.Cancel
        onAccepted: console.log('ok clicked')
        onRejected: print('cancel clicked')
    }


}