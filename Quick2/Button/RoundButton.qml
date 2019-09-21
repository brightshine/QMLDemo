import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible:true

    RoundButton {
        text: "\u2713" // Unicode Character 'CHECK MARK'
        onClicked: textArea.readOnly = true
    }

    RoundButton {
        text: "\u0058" // Unicode Character 'CHECK MARK'
        onClicked: textArea.readOnly = true
        radius: 200
    }

}
