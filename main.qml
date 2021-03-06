import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Dialogs 1.2

import "./qml/extended_tab_view" as Flow

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    minimumWidth: 320
    minimumHeight: 240

    title: qsTr("Hello World")

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }

    Flow.ExtendedTabView {
        anchors.fill: parent
    }
}
