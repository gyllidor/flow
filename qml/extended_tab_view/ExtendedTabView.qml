import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.0

SplitView {
    orientation: Qt.Horizontal

    FilesListView {
        id: idFilesView
        color: "brown"
        height: parent.height
        Layout.fillWidth: true
        Layout.minimumWidth: 60
    }

    Tabs {
        id: idTabs
        color: "grey"
        height: parent.height
        width: 120
        Layout.minimumWidth: 60
        Layout.maximumWidth: 300
    }
}
