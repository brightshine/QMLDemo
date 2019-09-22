import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible:true
    width:500
    height:400

    CheckBox {
        tristate: true
        checkState: allChildrenChecked ? Qt.Checked :
        anyChildChecked ? Qt.PartiallyChecked : Qt.Unchecked

        nextCheckState: function() {
            if (checkState === Qt.Checked)
                return Qt.Unchecked
            else
                return Qt.Checked
        }
    }
}

