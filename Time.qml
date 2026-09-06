// Time.qml
pragma Singleton

import Quickshell
import QtQuick

Singleton {
	id: itemModule
	readonly property string time : {
		Qt.formatDateTime(clock.date, "hh:mm")
	}

	SystemClock {
		id: clock
		precision: SystemClock.Minutes
	}
}
