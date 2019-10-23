import QtQuick 2.9

//Window code that imports MyWidget
Rectangle {
    id: window
    color: "white"; width: 240; height: 150

    Column {
        anchors.centerIn: parent; spacing: 15

        MyWidget {
            focus: false
            color: "lightblue"
        }
        MyWidget {
            focus: true             //set this MyWidget to receive the focus
            color: "palegreen"
        }
    }
}
