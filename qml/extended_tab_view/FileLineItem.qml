import QtQuick 2.6
import QtQuick.Layouts 1.0

Rectangle {
    width: defaultWidth
    height: parent.height
    Layout.minimumWidth: defaultWidth

    readonly property int defaultWidth: 30
    property string itemText

    Text {
        padding: 4
        elide: Text.ElideRight
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignLeft
        anchors.fill: parent
        text: itemText
    }
}
