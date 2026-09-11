// shell.qml
import QtQuick
import Quickshell
import Quickshell.Wayland
import qs.services
import "config.js" as Config

PanelWindow {
	color: "transparent"
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

		id: marginWrapper
		anchors.centerIn: parent
		implicitWidth: root.width - 96
		implicitHeight: root.height - 96

		Item {
			anchors.left: parent.left
			anchors.bottom: parent.bottom
			anchors.top: parent.top
			width: 58
			height: parent.height
			ListView {
				spacing: 4

				anchors.centerIn: parent

				model: Niri.workspaces

				delegate: Rectangle {

					border.width: 2
					border.color: Config.colors.White

					color: "#00000000"

					id: child
					width: 58
					height:	32

//				Text {
//					anchors.centerIn: parent
//					color: model.isUrgent ? Config.colors.BrightRed : Config.colors.White

//					text: "|¯¯¯¯¯¯¯¯|\n|_________|"
//				}

					Text {
						anchors.centerIn: parent
						color: Config.colors.White

						text: model.index
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
