import QtQuick 1.0
import "UI.js" as UI

Board {
    source: "fish_board.png"

    Bit {
        source: "fish_1.png"
        dockX: UI.leftMargin + 20; dockY:0; boardX: UI.leftMargin + 97; boardY: 0; dockW: 37; dockH: 55
    }
    Bit {
        source: "fish_2.png"
        dockX: UI.leftMargin + 10; dockY: 60; boardX: UI.leftMargin + 341; boardY: 0; dockW: 105; dockH: 55
    }
    Bit {
        source: "fish_3.png"
        dockX: UI.leftMargin + 10; dockY: 120; boardX: UI.leftMargin + 97; boardY: 235; dockW: 110; dockH: 55
    }
    Bit {
        source: "fish_4.png"
        dockX: UI.leftMargin + 10; dockY: 180; boardX: UI.leftMargin + 97; boardY: 0; dockW: 110; dockH: 55
    }
    Bit {
        source: "fish_5.png"
        dockX: UI.leftMargin + 30; dockY: 240; boardX: UI.leftMargin + 417; boardY: 117; dockW: 62; dockH: 55
    }
    Bit {
        source: "fish_6.png"
        dockX: UI.leftMargin + 10; dockY: 300; boardX: UI.leftMargin + 156; boardY: 60; dockW: 94; dockH: 55
    }
}






