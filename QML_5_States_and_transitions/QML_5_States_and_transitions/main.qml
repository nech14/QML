import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12


Window {

    property string activeComponent: ""

    property double opacity_untarget: 0.3
    width: 540
    height: 960
    color: "#f5f5f5"
    title: qsTr("Task_for_Layout")
    visible: true
    ColumnLayout {
        id: grid
        anchors.fill: parent

        Header{
            id: header

            headerText: "Header"
            Layout.fillWidth: true

            Text {
                id:arrowback

                text: "<--"
                font.pixelSize: 30
                font.bold: true
                opacity: 0
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        main_row.state =""
                    }
                }
            }
        }

        Rectangle {

            Layout.fillWidth: true
            Layout.fillHeight: true
            id:rect_mid

            GridLayout{
                anchors.fill: parent
                rows: 1
                columns: 1
                Rectangle {
                    Layout.topMargin: 3
                    Layout.bottomMargin: 3
                    Layout.leftMargin: 5
                    Layout.rightMargin: 5
                    color: "#f5f5f5"
                    border.color: "#dadada"
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    border.width: 1
                    Text{
                        id:main_text
                        text: "Content"
                        anchors.centerIn: parent
                    }
                }
            }
        }

        Rectangle{

            id: footer
            color: "#dcdcdc"
            Layout.fillWidth: true
            height:100


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
                        PropertyChanges { target: arrowback;  opacity: 1}
                    },
                    State {
                        name: "button3"
                        PropertyChanges { target: com_b1; color: "#d3d3d3"; opacity: opacity_untarget }
                        PropertyChanges { target: com_b2; color: "#d3d3d3"; opacity: opacity_untarget }
                        PropertyChanges { target: com_b3; color: "#C0C0C0"; opacity: 1 }
                        PropertyChanges { target: header; headerText: "Header 3" }
                        PropertyChanges { target: main_text; text: "Item 3 content" }
                        PropertyChanges { target: arrowback;  opacity: 1}
                    }
                ]

                transitions: [
                    Transition {
                        ColorAnimation { properties: "color"; duration: 500 }
                    }
                ]

            }
        }


    }
}
