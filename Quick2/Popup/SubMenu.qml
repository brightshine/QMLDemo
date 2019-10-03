import QtQuick 2.13
import QtQuick.Controls 2.13
import QtGraphicalEffects 1.0

Button {
    id: fileButton
    text: "File"
    onClicked: menu.open()

    Menu {
        id: menu
        y: fileButton.height
        Action { text: "Cut" }
        Action { text: "Copy" }
        Action { text: "Paste" }

        MenuSeparator { }

        Menu {
            title: "Find/Replace"
            Action { text: "Find Next" }
            Action { text: "Find Previous" }
            Action { text: "Replace" }
        }
    }
}
