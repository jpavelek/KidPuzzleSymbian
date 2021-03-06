import QtQuick 1.0
import "UI.js" as UI

Rectangle {
    id: page
    width: UI.screenWidth
    height: UI.screenHeight
    color: "black"
    opacity: 0

    Text {
        id: queryText1
        text: qsTr("Would you kindly rate this game?")
        font.bold: true
        font.family: "sans-serif"
        font.pixelSize: 30
        color: "white"
        anchors { horizontalCenter: parent.horizontalCenter; bottom: parent.verticalCenter; bottomMargin: 10 }
    }

    Rectangle {
        id: yesButton
        color: "#449944"
        radius: 15
        Text {
            text: qsTr("Yes")
            font.bold: true
            font.family: "sans-serif"
            font.pixelSize: 32
            color: "white"
            anchors.centerIn: parent
        }
        x: 150
        y: 230
        width: 140
        height: 70
        MouseArea {
            anchors.fill: yesButton
            onPressed:  { parent.color = "#115511" }
            onCanceled: { parent.color = "#449944" }
            onReleased: {
                parent.color = "#449944";
                Qt.openUrlExternally("http://store.ovi.mobi/content/254590");  //URI for Nokia Mobile Browser, not for desktop one
                tileLoader.source = "BoardButterfly.qml"
                settingsObj.setReviewed();
            }
        }
    }

    Rectangle {
        id: noButton
        color: "#994444"
        radius: 15
        Text {
            text: qsTr("No")
            font.bold: true
            font.family: "sans-serif"
            font.pixelSize: 32
            color: "white"
            anchors.centerIn: parent
        }
        x: 350
        y: 230
        width: 140
        height: 70
        MouseArea {
            anchors.fill: noButton
            onPressed:  { parent.color = "#551111" }
            onCanceled: { parent.color = "#994444" }
            onReleased: { parent.color = "#994444"; tileLoader.source = "BoardButterfly.qml" }
        }
    }


    Image {
        id: returnArrow
        source: "back.png"
        anchors { right: parent.right; top: parent.top }
        z: 99
        MouseArea {
            anchors.fill: returnArrow
            onClicked: { tileLoader.source = "MainSelection.qml" }
        }
    }

    PropertyAnimation { id: showAnimation; target: page; property: "opacity"; to: 1; duration: 300; easing.type: Easing.InOutQuad }

    Component.onCompleted: { if (settingsObj.wasReviewed()) tileLoader.source = "BoardButterfly.qml"; else showAnimation.running = true; }
}
