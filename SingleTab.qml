import QtQuick 2.4

Rectangle {
    color: tabColor
    width: tabWidth
    height: tabHeight

    property string tabColor: "#ff0000"
    property string tabColorText: "#ffffff"
    property string tabPath: "value"
    property int tabWidth: 20
    property int tabHeight: 20

    property alias tabMouseArea: idMouseArea

    Text {
        id: idTabText
        horizontalAlignment: Text.AlignHCenter
        anchors.fill: parent
        text: tabPath
        color: tabColorText
    }

    onFocusChanged: {
        tabColor = focus ? "#009900" : "#ff0000"
        tabColorText = focus ? "#0f0f0f" : "#ffffff"
        idTabText.scale = focus ? 1.2 : 1.0
    }

    MouseArea {
        id: idMouseArea
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton | Qt.RightButton | Qt.MiddleButton

        onClicked: {
            console.log("onClicked")

            if (mouse.button === Qt.MiddleButton)
                parent.destroy()
            else if (mouse.button === Qt.LeftButton)
                parent.focus = true
        }

    }
}
