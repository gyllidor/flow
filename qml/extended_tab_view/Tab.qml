import QtQuick 2.6

Rectangle {
    width: parent.width
    height: tabHeight
    color: focus ? "red" : "orange"
    opacity: 0.8

    property string tabName: name
    property string tabPath: path
    property int tabHeight: 20

    Text {
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideMiddle
        text: tabName
    }

    onFocusChanged: {
        color = focus ? "red" : "orange"
    }
}
