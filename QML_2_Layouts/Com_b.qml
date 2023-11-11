import QtQuick 2.15

Item{
    property alias comText: rect1_text.text
    Rectangle
    {
        id: rect1
        color: "#d3d3d3"
        height: rect_bot.height
        width: rect_bot.width/3-5


        Text{
            id: rect1_text
            anchors.centerIn: parent
        }
    }
}
