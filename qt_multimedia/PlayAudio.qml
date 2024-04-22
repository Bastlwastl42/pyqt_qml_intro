import QtQuick.Controls
import QtQuick
import QtMultimedia


ApplicationWindow {
    width: 640; height: 480
    visible: true
    title: 'Play Audio Example'

    MediaPlayer {
        id: player
        source: "sound/mysound.mp3"
        audioOutput: AudioOutput {}
    }

    Component.onCompleted: {
        player.play()
    }

}