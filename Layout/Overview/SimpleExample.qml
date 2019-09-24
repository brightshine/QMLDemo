import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

ApplicationWindow {
    RowLayout {
        anchors.fill: parent
        spacing: 6
        Rectangle {
            color: 'azure'
            Layout.preferredWidth: 100
            Layout.preferredHeight: 150
        }
        Rectangle {
            color: "plum"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }
}

/*
 * As the intention of using a layout is to rearrange its children whenever the layout changes size, the application should make sure that the layout gets resized. In the above snippet the RowLayout ensures that by specifying anchors.fill: parent. However, it can also be by other means, such as directly specifying width and height properties. In the same snippet, the azure Rectangle has a fixed size of (100, 150) pixels, and the plum Rectangle will expand to occupy all the space it gets allocated.

Note: A layout is responsible for its children's geometry. You should therefore not specify width, height, x, y or any other properties that might influence those properties (such as anchors) on those items. Otherwise there would be a conflict of interest, and the result is undefined. This is also the case if the child item is a layout. Therefore, only layouts with no parent layout can have anchors.fill: parent./
