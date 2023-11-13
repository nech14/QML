import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12


Rectangle{

    id: footer
    color: "#dcdcdc"
    height:100
    property string activeComponent: ""

    property double opacity_untarget: 0.3
    function changeColors(senderText) {
        if (senderText === "1") {
            com_b1.opacity = 1
            com_b2.opacity = opacity_untarget
            com_b3.opacity = opacity_untarget
        } else if(senderText === "2"){
            com_b1.opacity = opacity_untarget
            com_b2.opacity = 1
            com_b3.opacity = opacity_untarget
        } else if(senderText === "3"){
            com_b1.opacity = opacity_untarget
            com_b2.opacity = opacity_untarget
            com_b3.opacity = 1
        }
    }

    RowLayout{
        anchors.fill:parent
        spacing:10


        Com_b {
            id: com_b1
            comText: "1"
            onComClicked: changeColors(com_b1.comText)
        }

        Com_b {
            id: com_b2
            comText: "2"
            onComClicked: changeColors(com_b2.comText)
        }

        Com_b {
            id: com_b3
            comText: "3"
            onComClicked: changeColors(com_b3.comText)
        }
    }
}
