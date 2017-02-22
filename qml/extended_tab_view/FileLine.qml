import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.0

Rectangle {
    id: idRoot
    width: parent.width
    height: 20

    readonly property int defaultWidth: 30

    SplitView {
        id: idSplit
        orientation: Qt.Horizontal
        width: idRoot.width
        height: 20

        FileLineItem {
            width: 120
            itemText: fileName
            color: "green"
        }

        FileLineItem {
            itemText: fileType
        }

        FileLineItem {
            itemText: fileSize
        }
    }

    MouseArea {
        anchors.fill: parent

        onClicked: {
            idModelFileLine.append({ "fileName": "fileName", "fileSize": 10, "fileType": "txt"})
        }
    }
}
