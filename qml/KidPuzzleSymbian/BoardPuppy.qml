import QtQuick 1.0
import "UI.js" as UI

Board {
    source: "puppy_board.png"

    Bit {
        source: "puppy_ball.png"
        dockX: UI.leftMargin + 10; dockY:5; boardX: UI.leftMargin + 124; boardY: 209; dockW: 45; dockH: 45
    }
    Bit {
        source: "puppy_torso.png"
        dockX: UI.leftMargin + 3; dockY: 55; boardX: UI.leftMargin + 290; boardY: 75; dockW: 80; dockH: 45
        z: 5
    }
    Bit {
        source: "puppy_legs.png"
        dockX: UI.leftMargin + 30; dockY: 105; boardX: UI.leftMargin + 256; boardY: 150; dockW: 30; dockH: 45
        z: 6
    }
    Bit {
        source: "puppy_head.png"
        dockX: UI.leftMargin + 20; dockY: 155; boardX: UI.leftMargin + 203; boardY: 38; dockW: 40; dockH: 45
        z: 7
    }
    Bit {
        source: "puppy_leg.png"
        dockX: UI.leftMargin + 40; dockY: 205; boardX: UI.leftMargin + 485; boardY: 167; dockW: 20; dockH: 45
        z: 8
    }
    Bit {
        source: "puppy_tail.png"
        dockX: UI.leftMargin + 15; dockY: 255; boardX: UI.leftMargin + 519; boardY: 147; dockW: 70; dockH: 30
        z: 4
    }
    Bit {
        source: "puppy_back_leg.png"
        dockX: UI.leftMargin + 15; dockY: 305; boardX: UI.leftMargin + 370; boardY: 240; dockW: 60; dockH: 45
        z: 2
    }
}
