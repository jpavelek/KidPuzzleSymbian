import QtQuick 1.0
import "UI.js" as UI

Board {
    source: "fish_board.png"

    Bit {
        source: "fish_1.png"
        dockX: UI.leftMargin + 30; dockY:0; boardX: UI.leftMargin + 97; boardY: 0; dockW: 37; dockH: 55
    }
    Bit {
        source: "fish_2.png"
        dockX: UI.leftMargin + 2; dockY: 60; boardX: UI.leftMargin + 343; boardY: 0; dockW: 90; dockH: 55
    }
    Bit {
        source: "fish_3.png"
        dockX: UI.leftMargin + 2; dockY: 120; boardX: UI.leftMargin + 97; boardY: 235; dockW: 90; dockH: 55
    }
    Bit {
        source: "fish_4.png"
        dockX: UI.leftMargin + 2; dockY: 180; boardX: UI.leftMargin + 97; boardY: 0; dockW: 90; dockH: 55
    }
    Bit {
        source: "fish_5.png"
        dockX: UI.leftMargin + 15; dockY: 240; boardX: UI.leftMargin + 417; boardY: 117; dockW: 52; dockH: 55
    }
    Bit {
        source: "fish_6.png"
        dockX: UI.leftMargin + 2; dockY: 300; boardX: UI.leftMargin + 156; boardY: 60; dockW: 90; dockH: 55
    }
}






