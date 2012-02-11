import QtQuick 1.0
import "UI.js" as UI
import QtMultimediaKit 1.1

Rectangle {
    width: UI.screenWidth
    height: UI.screenHeight
    color: "black"
    property bool isMuted: true //mute by default, it is just too loud on Symbian :(

    Loader {
        id: tileLoader
        source: "MainSelection.qml"
    }

    SoundEffect {
        id: baloonPop
        source: "pop.wav"; muted: isMuted; volume: 0.5
    }
}
