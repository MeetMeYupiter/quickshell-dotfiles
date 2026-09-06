// ClockWidget.qml
import QtQuick

Text {
	FontLoader { id: fuckingFont; source: "https://fonts.googleapis.com/css2?family=Cutive+Mono&display=swap"}
	font.family: "Roboto"
	font.weight: 100
	font.pixelSize: 12
	color: Colors.dt_3
	text: Time.time
}
