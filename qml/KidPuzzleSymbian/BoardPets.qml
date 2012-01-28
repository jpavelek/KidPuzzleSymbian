import QtQuick 1.0
import "UI.js" as UI

Board {
    source: "pets_board.png"

    Bit {
        source: "pets_kitten.png"
        dockX: UI.leftMargin + 10; dockY:5; boardX: UI.leftMargin + 401; boardY: 152; dockW: 80; dockH: 80
    }
    Bit {
        source: "pets_rabbit.png"
        dockX: UI.leftMargin + 10; dockY:95; boardX: UI.leftMargin + 121; boardY: 147; dockW: 80; dockH: 80
    }
    Bit {
        source: "pets_puppy.png"
        dockX: UI.leftMargin + 5; dockY:195; boardX: UI.leftMargin + 333; boardY: 11; dockW: 90; dockH: 70
    }
    Bit {
        source: "pets_butterfly.png"
        dockX: UI.leftMargin + 5; dockY:275; boardX: UI.leftMargin + 93; boardY: 11; dockW: 90; dockH: 70
    }

}
