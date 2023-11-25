import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3


ApplicationWindow {
    visible: true
    width: 640
    height: 480
    minimumWidth: 320
    minimumHeight: 240



    ColumnLayout {
        anchors.fill: parent
        spacing: 5

        Comp {
            id: headerComp
            Layout.fillWidth: true
            Layout.preferredHeight: 50
            color: "#F08080"
            customText: "Header"
            border.width: 2
            customBorderColor: "gray"
            Text {
                id:arrowback

                text: "<--"
                font.pixelSize: 30
                font.bold: true
                opacity:0;
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        main_row.state = ""
                    }
                }
            }
        }

        Item {

            Layout.fillWidth: true
            Layout.fillHeight: true
            Comp {
                id: contentComp
                width: parent.width * 0.9
                height: parent.height
                anchors.centerIn: parent
                border.width: 2
                customBorderColor: "gray"
                color: "lightblue"
                customText: "Content"
            }
        }

        RowLayout {
            id: main_row
            spacing: 5
            state: ""

            Comp {
                id: comp1
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                color: "lightgreen"
                customText: "1"
                height: parent.height
                border.width: 2
                customBorderColor: "gray"
                Layout.alignment: Qt.AlignBottom
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

            Comp {
                id: comp2
                border.width: 2
                customBorderColor: "gray"
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                color: "lightblue"
                customText: "2"
                Layout.alignment: Qt.AlignBottom
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

            Comp {
                id: comp3
                border.width: 2
                customBorderColor: "gray"
                Layout.preferredHeight: 50
                Layout.fillWidth: true
                color: "lightyellow"
                customText: "3"
                Layout.alignment: Qt.AlignBottom
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
            // Define states
            states: [
                State {
                    name: "button1"
                    PropertyChanges { target: comp1; color: "red";}
                    PropertyChanges { target: comp2; color: "lightblue" ;opacity:0.4}
                    PropertyChanges { target: comp3; color: "lightyellow";opacity:0.4 }
                    PropertyChanges { target: headerComp; customText: "Button 1 clicked" }
                    PropertyChanges { target: contentComp; customText: "Content for Button 1" }
                },
                State {
                    name: "button2"
                    PropertyChanges { target: comp1; color: "lightgreen";opacity:0.4 }
                    PropertyChanges { target: comp2; color: "red"; }
                    PropertyChanges { target: comp3; color: "lightyellow";opacity:0.4 }
                    PropertyChanges { target: headerComp; customText: "Button 2 clicked";  }
                    PropertyChanges { target: contentComp; customText: "Content for Button 2" }
                    PropertyChanges { target: arrowback;opacity:1}
                },
                State {
                    name: "button3"
                    PropertyChanges { target: comp1; color: "lightgreen";opacity:0.4 }
                    PropertyChanges { target: comp2; color: "lightblue";opacity:0.4 }
                    PropertyChanges { target: comp3; color: "red" ;}
                    PropertyChanges { target: headerComp; customText: "Button 3 clicked" }
                    PropertyChanges { target: contentComp; customText: "Content for Button 3" }
                    PropertyChanges { target: arrowback;opacity:1}
                }
            ]

            // Define transitions
            transitions: [
                Transition {
                    ColorAnimation { properties: "color"; duration: 500 }
                }
            ]

        }
    }
}
