var component;
var sprite;

function createSpriteObjects() {
	component = Qt.createComponent("Sprite.qml");

    //If you are certain the QML file to be loaded is a local file, you could omit the finishCreation() function and call createObject() immediately:
	if (component.status == Component.Ready)
		finishCreation();
	else
		component.statusChanged.connect(finishCreation);
}

function finishCreation() {
	if (component.status == Component.Ready) {
		sprite = component.createObject(appWindow, {x: 200, y: 200});
		if (sprite == null) {
			// Error Handling
			console.log("Error creating object");
		}
	} else if (component.status == Component.Error) {
		// Error Handling
		console.log("Error loading component:", component.errorString());
	}
}
