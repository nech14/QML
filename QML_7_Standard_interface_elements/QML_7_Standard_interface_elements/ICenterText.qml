import QtQuick
import Felgo

Item {
    anchors.fill: parent
    property alias comText: t.text
    Text{
        id: t
        anchors.centerIn: parent
        color: "black"
    }
}
