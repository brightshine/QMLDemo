import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Dialogs 1.2

Dialog {
    id: dateDialog
    visible: true
    title: "Choose a date"
    standardButtons: StandardButton.Save | StandardButton.Cancel | StandardButton.Close

    onAccepted: console.log("Saving the date " +
        calendar.selectedDate.toLocaleDateString())

    Calendar {
        id: calendar
        onDoubleClicked: dateDialog.click(StandardButton.Save)
    }
}
