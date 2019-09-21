import QtQuick 2.0
import "componentCreation.js" as MyScript

Rectangle {
	id: root
	width: 300; height: 300

    Component.onCompleted: {
        var newObject = Qt.createQmlObject('import QtQuick 2.0; Rectangle {color: "red"; width: 200; height: 200}',
        root);
    }
}
