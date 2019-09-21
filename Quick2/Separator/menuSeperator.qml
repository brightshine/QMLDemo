
import QtQuick 2.9
import QtQuick.Controls 2.1

Rectangle {
    width: 400
    height: 400

    Button {
        id: fileButton
        text: "File"
        onClicked: menu.open()

        Menu {
            id: menu

            MenuItem {
                text: qsTr("New...")
            }
            MenuItem {
                text: qsTr("Open...")
            }
            MenuItem {
                text: qsTr("Save")
            }

            MenuSeparator {
                padding: 0
                topPadding: 12
                bottomPadding: 12
                contentItem: Rectangle {
                    implicitWidth: 200
                    implicitHeight: 1
                    color: "#1E000000"
                }
            }

            MenuItem {
                text: qsTr("Exit")
            }
        }
    }
}

