import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible:true
    width:500
    height:400

    // mutually exclusive group of buttons

    ButtonGroup {
        buttons: column.children
    }

    Column {
        id: column

        RadioButton {
            checked: true
            text: qsTr("DAB")
        }

        RadioButton {
            text: qsTr("FM")
        }

        RadioButton {
            text: qsTr("AM")
        }
    }

}

