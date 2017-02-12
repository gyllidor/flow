import QtQuick 2.0

Item {
    id: idRoot

    Rectangle {
        anchors.fill: parent

        Rectangle {
            color: "red"
            anchors.left: parent.left
            anchors.right: parent.right
            height: parent.height
        }

        Rectangle {
            id: idSplitter
            color: "black"
            width: 1
            height: parent.height
            x: Math.round(parent.width * 0.8)

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                acceptedButtons: Qt.LeftButton
                drag.target: idSplitter
                drag.axis: Drag.XAxis
                drag.minimumX: idRoot.width * 0.1
                drag.maximumX: idRoot.width * 0.9

                onEntered: {
                    idSplitter.width = idSplitter.width + 2
                    idSplitter.color = "blue"
                }

                onExited: {
                    idSplitter.color = "black"
                    idSplitter.width = idSplitter.width - 2
                }
            }
        }

        Rectangle {
            color: "green"
            anchors.left: idSplitter.right
            anchors.right: parent.right
            height: parent.height

            Tabs {
                anchors.fill: parent
            }
        }
    }
}
