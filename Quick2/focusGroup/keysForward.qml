import QtQuick 2.9


Rectangle {
    width: 400; height: 400
    color: "red"

    Rectangle {
        id: list1
        width: 100; height: 100
        color: "white"
        // ...
        Keys.onPressed: {
            if (event.key == Qt.Key_A) {
                console.log('Key A was pressed');
                event.accepted = true;
            }
        }
    }
    Rectangle {
        id: list2
        width: 100; height: 100
        color: "blue"
        anchors.top: list1.bottom

        Keys.onPressed: {
            if (event.key == Qt.Key_B) {
                console.log('Key B was pressed');
                event.accepted = true;
            }
        }
    }
    Keys.forwardTo: [list1, list2]
    focus: true
}
