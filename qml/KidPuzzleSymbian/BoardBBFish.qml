import QtQuick 1.0
import "UI.js" as UI

Board {
    source: "bbfish_board.png"

    Bit {
        source: "bbf_tail.png"
        dockX: UI.leftMargin + 15; dockY:0; boardX: UI.leftMargin + 97; boardY: 1; dockW: 55; dockH: 65
    }
    Bit {
        source: "bbf_head.png"
        dockX: UI.leftMargin + 2; dockY: 75; boardX: UI.leftMargin + 361; boardY: 176; dockW: 90; dockH: 65
    }
    Bit {
        source: "bbf_fin.png"
        dockX: UI.leftMargin + 2; dockY: 150; boardX: UI.leftMargin + 97; boardY: 0; dockW: 90; dockH: 65
    }
    Bit {
        source: "bbf_belly.png"
        dockX: UI.leftMargin + 2; dockY: 225; boardX: UI.leftMargin + 173; boardY: 172; dockW: 90; dockH: 65
    }
    Bit {
        source: "bbf_forehead.png"
        dockX: UI.leftMargin + 2; dockY: 295; boardX: UI.leftMargin + 361; boardY: 0; dockW: 90; dockH: 65
    }
}


