import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible:true
    width:500
    height:400

    ButtonGroup { 
        id: radioGroup 
        exclusive: false // QT 5.10 
    }

    Column {
        Label {
            text: qsTr("Radio:")
        }

        RadioButton {
            checked: true
            text: qsTr("DAB")
            ButtonGroup.group: radioGroup
        }

        RadioButton {
            text: qsTr("FM")
            ButtonGroup.group: radioGroup
        }

        RadioButton {
            text: qsTr("AM")
            ButtonGroup.group: radioGroup
        }
    }
}

