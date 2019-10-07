
import QtQuick 2.9
import QtQuick.Controls 2.2
ApplicationWindow {
    visible: true

    Rectangle {
        id: roundRect
        radius: 5
        color: "black"

        width : 300
        height : 300
    }

    Rectangle {
        id: squareRect

        //color: "red"
        border.color: "red"
        height: roundRect.radius
        width : roundRect.radius
        anchors.bottom : roundRect.bottom
        anchors.left : roundRect.left
        anchors.right : roundRect.right

    }
}
