import QtQuick 1.0
import "UI.js" as UI

Board {
    source: "aquarium_board.png"
    Bit {
        source: "aquarium_1.png"
        dockX: UI.leftMargin + 10; dockY:8; boardX: UI.leftMargin + 132; boardY: 17; dockW: 80; dockH: 60
    }
    Bit {
        source: "aquarium_2.png"
        dockX: UI.leftMargin + 5; dockY: 85; boardX: UI.leftMargin + 115; boardY: 177; dockW: 90; dockH: 30
    }
    Bit {
        source: "aquarium_3.png"
        dockX: UI.leftMargin + 20; dockY: 145; boardX: UI.leftMargin + 272; boardY: 233; dockW: 55; dockH: 65
    }
    Bit {
        source: "aquarium_4.png"
        dockX: UI.leftMargin + 10; dockY: 220; boardX: UI.leftMargin + 489; boardY: 193; dockW: 80; dockH: 65
    }
    Bit {
        source: "aquarium_5.png"
        dockX: UI.leftMargin + 40; dockY: 290; boardX: UI.leftMargin + 371; boardY: 39; dockW: 30; dockH: 65
    }
}


