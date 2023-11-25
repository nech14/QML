import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12


Rectangle{

    id: footer
    color: "#dcdcdc"
    height:100
    property string activeComponent: ""

    property double opacity_untarget: 0.3


    RowLayout{
        id: main_row
        anchors.fill:parent
        state: ""
        spacing:10


        Com_b {
            id: com_b1
            comText: "1"
            //onComClicked: changeColors(com_b1.comText)
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if (main_row.state !== "button1")
                        main_row.state = "button1";
                    else
                        main_row.state = "";
                }
            }
        }

        Com_b {
            id: com_b2
            comText: "2"
            //onComClicked: changeColors(com_b2.comText)
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if (main_row.state !== "button2")
                        main_row.state = "button2";
                    else
                        main_row.state = "";
                }
            }
        }

        Com_b {
            id: com_b3
            comText: "3"
            //onComClicked: changeColors(com_b3.comText)
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if (main_row.state !== "button3")
                        main_row.state = "button3";
                    else
                        main_row.state = "";
                }
            }

        }
        states: [
            State {
                name: "button1"
                PropertyChanges { target: com_b1; color: "#C0C0C0" ; opacity: 1}
                PropertyChanges { target: com_b2; color: "#d3d3d3" ; opacity:opacity_untarget }
                PropertyChanges { target: com_b3; color: "#d3d3d3" ; opacity:opacity_untarget }
                PropertyChanges { target: header; headerText: "Header 1" }
                PropertyChanges { target: main_text; text: "Item 1 content" }
            },
            State {
                name: "button2"
                PropertyChanges { target: com_b1; color: "#d3d3d3" ; opacity: opacity_untarget}
                PropertyChanges { target: com_b2; color: "#C0C0C0"; opacity: 1 }
                PropertyChanges { target: com_b3; color: "#d3d3d3"; opacity: opacity_untarget}
                PropertyChanges { target: header; headerText: "Header 2";  }
                PropertyChanges { target: main_text; text: "Item 2 content" }
                PropertyChanges { target: main; arrowback: 1}
            },
            State {
                name: "button3"
                PropertyChanges { target: com_b1; color: "#d3d3d3"; opacity: opacity_untarget }
                PropertyChanges { target: com_b2; color: "#d3d3d3"; opacity: opacity_untarget }
                PropertyChanges { target: com_b3; color: "#C0C0C0"; opacity: 1 }
                PropertyChanges { target: header; headerText: "Header 3" }
                PropertyChanges { target: main_text; text: "Item 3 content" }
                //PropertyChanges { target: header; arrowback: 1}
            }
        ]

        transitions: [
            Transition {
                ColorAnimation { properties: "color"; duration: 500 }
            }
        ]

    }
}
