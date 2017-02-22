import QtQuick 2.6
import QtQuick.Controls 1.4

Rectangle {

    ListModel {
        id: idModelFileLine

        ListElement {
            fileName: "fileName"
            fileSize: 10
            fileType: "txt"
        }
    }

    ScrollView {
        width: parent.width
        height: parent.height

        ListView {
            width: 1000
            height: parent.height
            model: idModelFileLine
            spacing: 1

            delegate: FileLine {
            }

//            onCountChanged: {
//                for (var i = 0; i < count; ++i) {
//                    contentItem.children[i].color = "red"
//                }
//            }
        }
    }
}
