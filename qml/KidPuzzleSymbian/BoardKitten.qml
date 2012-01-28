import QtQuick 1.0
import "UI.js" as UI

Board {
    source: "kitten_board.png"

    Bit {
        source: "kitten_bunny.png"
        dockX: UI.leftMargin + 20; dockY:5; boardX: UI.leftMargin + 96; boardY: 189; dockW: 50; dockH: 65
    }
    Bit {
        source: "kitten_flowers.png"
        dockX: UI.leftMargin + 3; dockY:80; boardX: UI.leftMargin + 382; boardY: 171; dockW: 90; dockH: 65
    }
    Bit {
        source: "kitten_head.png"
        dockX: UI.leftMargin + 3; dockY:160; boardX: UI.leftMargin + 323; boardY: 0; dockW: 90; dockH: 53
    }
    Bit {
        source: "kitten_trees.png"
        dockX: UI.leftMargin + 3; dockY:230; boardX: UI.leftMargin + 96; boardY: 0; dockW: 90; dockH: 45
    }
    Bit {
        source: "kitten_body.png"
        dockX: UI.leftMargin + 20; dockY:290; boardX: UI.leftMargin + 245; boardY: 111; dockW: 40; dockH: 65
    }
}
