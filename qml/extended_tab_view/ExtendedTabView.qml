import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.0

SplitView {
    orientation: Qt.Horizontal

    Rectangle {
        color: "red"
        height: parent.height
        Layout.fillWidth: true
    }

    Rectangle {
        color: "green"
        height: parent.height
        width: 120
        Layout.minimumWidth: 60
        Layout.maximumWidth: 300

        Tabs {
            anchors.fill: parent
        }
    }
}
