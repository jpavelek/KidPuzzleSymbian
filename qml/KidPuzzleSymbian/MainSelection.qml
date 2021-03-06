import QtQuick 1.0
import "UI.js" as UI

Image {
    id: mainPage
    width: UI.screenWidth
    height: UI.screenHeight
    source: (Math.random() > 0.5) ? "bg2.png" : "bg1.png"
    opacity: 0.0

    Component {
        id: tilesGridDelegate
        Image {
            id: thumbnailImage
            width: UI.delegateWidth
            height: UI.delegateHeigh
            source: thumbnail
            MouseArea {
                anchors.fill: (boardEnabled) ? parent : undefined
                onClicked: {
                    gridTiles.currentIndex = index
                    tileLoader.source = tileComponent
                }
            }
            Rectangle {
                visible: !boardEnabled
                anchors.fill: thumbnailImage
                radius: 30
                opacity: 0.5
                color: "black"
            }
            Text {
                visible: false //FULLVERSION (buyTile == undefined) ? false : true
                text: qsTr("Upgrade for 2 EURO")
                anchors { horizontalCenter: parent.horizontalCenter; verticalCenter: parent.verticalCenter }
                font.pixelSize: 32
                color: "black"
                font.bold: true
            }
        }
    }

    ListModel {
        id: testItems
        ListElement {
            tileComponent: "BoardRedfish.qml"
            thumbnail: "redfish_thumbnail.png"
            boardEnabled: true
        }
        ListElement {
            tileComponent: "BoardSimplePuppy.qml"
            thumbnail: "simple_puppy_thumbnail.png"
            boardEnabled: true
        }
        ListElement {
            tileComponent: "BoardFish.qml"
            thumbnail: "fish_thumbnail.png"
            boardEnabled: true
        }
        ListElement {
            tileComponent: "BoardPets.qml"
            thumbnail: "pets_thumbnail.png"
            boardEnabled: true
        }
        ListElement {
            tileComponent: "BoardAquarium2.qml"
            thumbnail: "aquarium2_thumbnail.png"
            boardEnabled: true
        }
        ListElement {
            tileComponent: "BoardKitten.qml"
            thumbnail: "kitten_thumbnail.png"
            boardEnabled: true
        }
        ListElement {
            tileComponent: "BoardAquarium.qml"
            thumbnail: "aquarium_thumbnail.png"
            boardEnabled: true
        }
        ListElement {
            tileComponent: "BoardPuppy.qml"
            thumbnail: "puppy_thumbnail.png"
            boardEnabled: true
        }
        ListElement {
            tileComponent: "BoardBBFish.qml"
            thumbnail: "bbfish_thumbnail.png"
            boardEnabled: true
        }
        ListElement {
            tileComponent: "BannerPleaseRate.qml"
            thumbnail: "butterfly_thumbnail.png"
            boardEnabled: true
        }
    }


    GridView {
        id: gridTiles
        model: testItems
        cellWidth: UI.gridCellWidth
        cellHeight: UI.gridCellHeight
        flow: GridView.TopToBottom
        delegate: tilesGridDelegate
        anchors { fill: parent; topMargin: 10; bottomMargin: 10; leftMargin: 20; rightMargin: 20 }
    }
    Image {
        source: "close.png"
        width: 64
        height: 48
        anchors { bottom: parent.bottom; right: parent.right }
        MouseArea { anchors.fill: parent; onClicked: { Qt.quit() } }
    }
    Image {
        source: isMuted ? "sound-off.png" : "sound-on.png"
        width: 64
        height: 48
        anchors { bottom: parent.bottom; left: parent.left }
        MouseArea { anchors.fill: parent; onClicked: { isMuted = !isMuted; settingsObj.setMuted(isMuted) } }
    }

    Behavior on opacity {  PropertyAnimation { target: mainPage; property: "opacity"; duration: 300; easing.type: Easing.InOutQuad  } }

    Component.onCompleted: { UI.init(); opacity = 1 }

}

