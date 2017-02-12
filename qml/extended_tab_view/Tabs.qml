import QtQuick 2.0

Item {

    Component {
        id: highlight
        Rectangle {
            width: idTabsView.width
            height: idTabsView.currentItem.height
            color: "blue"
            opacity: 0.8
            y: idTabsView.currentItem.y
            Behavior on y {
                SpringAnimation {
                    spring: 5
                    damping: 0.5
                }
            }
        }
    }

    ListModel {
        id: idTabModel

        ListElement {
            name: "name"
            path: "path"
        }
    }

    ListView {
        id: idTabsView
        anchors.fill: parent
        highlight: highlight
        highlightFollowsCurrentItem: true
        spacing: 1
        model: idTabModel
        delegate: Tab {

        }
    }

    MouseArea {
        anchors.fill: idTabsView
        acceptedButtons: Qt.LeftButton | Qt.RightButton | Qt.MiddleButton

        onClicked: {
            var itemIdx = idTabsView.indexAt(mouseX, mouseY)
            if (itemIdx === -1)
                return

            if (mouse.button === Qt.LeftButton) {
                idTabsView.currentIndex = itemIdx
                return
            }

            if (mouse.button === Qt.RightButton) {
                idTabModel.remove(itemIdx, 1)
                if (idTabModel.count === 0)
                    idTabModel.append({"name":"name", "path":"path"})
            }

            if (mouse.button === Qt.MiddleButton) {
                var item = idTabModel.get(itemIdx)
                idTabModel.insert(itemIdx + 1, { "name": item.name + "namenamename", "path": item.path })
            }
        }
    }
}
