import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12




    Rectangle {
        property alias headerText: header_text.text
        //property alias arrowback: arrowback.opacity
        id:header
        color: "#dcdcdc"
        height:100
        Text{
            id: header_text
            anchors.centerIn: parent
        }
    }


