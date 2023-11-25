import QtQuick 2.15
import QtQuick.Window 2.15

Rectangle {
    id: customRect
    property alias customText: customTextItem.text
    property alias customBorderColor: customRect.border.color


    width: parent.width
    height: parent.height * 0.1
    color: "lightgrey"
    border.color: "#cbcbcb"

    Text {
        id: customTextItem
        text: "Content"
        font {
            pointSize: 12

        }
        anchors.centerIn: parent
    }
}
