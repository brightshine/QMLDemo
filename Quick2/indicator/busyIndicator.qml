
import QtQuick 2.9
import QtQuick.Controls 2.1

Rectangle {
    width: 400
    height: 400

    BusyIndicator {
        running: image.status === Image.Loading
    }
}

