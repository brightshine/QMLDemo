import QtQuick 2.9
import QtQuick.Controls 2.2

ApplicationWindow {
    visible: true
    height: 640
    width: 480
    id: root

    ToastManager {
        id: toast
    }

    Timer {
        interval: 1000
        repeat: true
        running: true
        property int i: 0
        onTriggered: {
            toast.show("This timer has triggered " + (++i) + " times!");
        }
    }

    Timer {
        interval: 3000
        repeat: true
        running: true
        property int i: 0
        onTriggered: {
            toast.show("This important message has been shown " + (++i) + " times.", 5000);
        }
    }
}
