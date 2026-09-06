// Bar.qml

import Quickshell
import Quickshell.Io
import QtQuick

Scope {
	id: root

	Variants {
		model: Quickshell.screens

		PanelWindow {
			id: panel
			color: Colors.bg_1
			required property var modelData
			screen: modelData

			anchors {
				top: true
				left: true
				right: true
			}

			implicitHeight: 30

			// ClockWidget {
			//	anchors.centerIn: parent
			// }
			Column {
				width: 144
				topPadding: -2
				height: parent.height
				anchors.centerIn: parent
				Row {
					spacing: 5
					Text { font.family: "Roboto"; font.pixelSize: 12; text: "Now Playing"; font.weight: 200; color: Colors.ae_1 }
					ClockWidget { id: clock; anchors.right: parent; color: "Black" }
				}
				Rectangle {
					// anchors.centerIn: parent
					width: parent.width
					height: 10
					color: Colors.dt_2
				}
				Row {
					width: 144
					Rectangle {
						width: 12
						height: 12
					}
					Rectangle {
						width: 12
						height: 12
					}
					Rectangle {
						width: 12
						height: 12
					}
				}
			}
		}
	}
}
