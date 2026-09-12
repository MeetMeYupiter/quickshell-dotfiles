// shell.qml
import QtQuick
import Quickshell
import Quickshell.Wayland
import qs.services
import "config.js" as Config

PanelWindow {
	color: Config.colors.Black
	exclusionMode: ExclusionMode.Ignore
	WlrLayershell.layer: WlrLayer.Bottom
	aboveWindows: false
	anchors {
		top:	true
		bottom:	true
		left:	true
		right:	true
	}
	id: root

	Item { // this item used as margin
		property int workspaceIndex

		id: marginWrapper
		anchors.centerIn: parent
		implicitWidth: root.width - 96
		implicitHeight: root.height - 96

		Rectangle {
			width: workspaceContainer.width
			height: workspaceContainer.height
			color: "red"
		}

		Column {
			spacing: 4

			anchors.left: parent.left
			anchors.top: parent.top
			anchors.bottom: parent.bottom

//			model: Niri.workspaces
			Item {
				height: 20
				width: 60

				Text {
					color: Config.colors.White
					font.pointSize: 10
					text: "Layers of Hell"
				}
			}

			Repeater {
				height: 30
				id: workspaceContainer
				model: Niri.workspaces
				delegate: Rectangle {

					border.width: 1
					border.color: Config.colors.White

					color: "#00000000"

					id: workspaceRect
					implicitWidth: 76
					implicitHeight:	28

					Text {
						anchors.centerIn: parent
						color: Config.colors.White

						text: "Layer " + model.index
					}

					MouseArea {
						anchors.fill: parent
						onClicked: Niri.focusWorkspaceById(model.id)
					}
				}
			}
		}
	}
}
