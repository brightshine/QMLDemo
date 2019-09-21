import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: window
    width: 600
    height: 600
    visible: true

    Button {
        onClicked: popup.open()

        Popup {
            id: popup

            parent: Overlay.overlay

            x: Math.round((parent.width - width) / 2)
            y: Math.round((parent.height - height) / 2)
            width: 100
            height: 100
        }
    }
}
