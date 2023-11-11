import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12

Item {
    Rectangle {
        id: rect_bot
        color: "#dcdcdc"
        height:100
        RowLayout{
            anchors.fill:parent
            spacing:10
            Com_b
            {
                Layout.alignment: Qt.AlignTop
                comText: "1"
            }
            Com_b
            {
                Layout.alignment: Qt.AlignTop
                comText: "2"
            }
            Com_b{
                Layout.alignment: Qt.AlignTop
                comText: "3"
            }
        }
    }
}
