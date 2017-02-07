import QtQuick 2.4

Row {
    anchors.fill: parent

    Column {
        id: idFileList
        spacing: 1
        width: parent.width * 0.8
        height: parent.height

        Rectangle{
            width: parent.width
            height: parent.height
            color: "#333399"
        }
    }

    function createTab() {
        console.log("dblclk ");
        var component = Qt.createComponent("SingleTab.qml");
        if (component.status === Component.Ready)
            component.createObject(idVerticalTabs,
                                   {
                                       tabWidth: idVerticalTabs.width,
                                       "y": idVerticalTabs.childrenRect.height,
                                   });
    }

    Column {
        id: idVerticalTabs
        spacing: 1
        width: parent.width * 0.2
        height: parent.height

        SingleTab {
            tabWidth: parent.width
            focus: true

            tabMouseArea.onClicked: {
                createTab()
            }
        }



//        Rectangle {
//            anchors.horizontalCenter: parent.horizontalCenter
//            width: 20
//            height: 20
//            color: "red"

//            Rectangle {
//                anchors.centerIn: parent
//                width: 2
//                height: 8
//            }

//            Rectangle {
//                anchors.centerIn: parent
//                width: 8
//                height: 2
//            }

//            MouseArea {
//                anchors.fill: parent

//                onDoubleClicked: {
//                    console.log("dblclk ");
//                    var component = Qt.createComponent("SingleTab.qml");
//                    if (component.status === Component.Ready)
//                        component.createObject(idVerticalTabs,
//                                               {
//                                                   tabWidth: idVerticalTabs.width,
//                                                   "y": idVerticalTabs.childrenRect.height,
//                                               });
//                }
//            }
//        }
    }
}
