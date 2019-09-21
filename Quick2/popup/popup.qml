import QtQuick.Window 2.2
import QtQuick.Controls 2.1

ApplicationWindow {
	id: window
	width: 600
	height: 600
	visible: true

	Button {
		text: "Open"
		onClicked: popup.open()
	}

	Popup {
		id: popup
		x: 100
		y: 100
		width: 200
		height: 300
		modal: true
		focus: true
		closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
	}
}
