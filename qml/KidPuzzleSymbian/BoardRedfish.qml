import QtQuick 1.0
import "UI.js" as UI

Board {
    source: "redfish_board.png"

    Bit {
        source: "redfish_mid.png"
        dockX: UI.leftMargin + 10; dockY:5; boardX: UI.leftMargin + 230; boardY: 95; dockW: 65; dockH: 65
    }
    Bit {
        source: "redfish_tail.png"
        dockX: UI.leftMargin + 10; dockY: 80; boardX: UI.leftMargin + 453; boardY: 106; dockW: 65; dockH: 65
    }
    Bit {
        source: "redfish_head.png"
        dockX: UI.leftMargin + 10; dockY: 155; boardX: UI.leftMargin + 128; boardY: 105; dockW: 65; dockH: 65
    }
    Bit {
        source: "redfish_tailsection.png"
        dockX: UI.leftMargin + 10; dockY: 230; boardX: UI.leftMargin + 339; boardY: 96; dockW: 65; dockH: 65
    }
    Bit {
        source: "redfish_fin.png"
        dockX: UI.leftMargin + 2; dockY: 305; boardX: UI.leftMargin + 322; boardY: 197; dockW: 100; dockH: 40
    }
}
