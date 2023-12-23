import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.1
import QtQuick.Controls


Window {
    width: 640
    height: 480
    visible: true

    property int currentIndex: 0
    property string correctPassword: "111111"

    function updatePassword(digit) {
            passwordContainer.text += digit;
            currentIndex = passwordContainer.text.length;

            if (passwordContainer.text.length >= 6) {
                if (passwordContainer.text !== correctPassword){
                    passwordTitle.text = "Bad password!"
                    passwordTitle.color = "red"
                    passwordContainer.text = ""
                    currentIndex = 0
                } else {
                    passwordTitle.text = "You're in!"
                    passwordTitle.color = "green"
                    passwordContainer.text = ""
                    currentIndex = 0
                }
            }
    }

    function removeLastSymbol() {
        if (passwordContainer.text.length > 0) {
            passwordContainer.text = passwordContainer.text.substring(0, passwordContainer.text.length - 1);
        }
    }



    Text {
        id: passwordContainer
        text: ""
        visible: false;
    }


    Item {
        anchors.fill: parent
        ColumnLayout {
            anchors.centerIn: parent
            Text {
                id: passwordTitle
                text: "Enter your password:"
                font.pixelSize: 16
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Rectangle {
                id: passwordField
                color: "white"
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                height: 40

                Row {
                    spacing: 10
                    anchors.centerIn: parent
                    Repeater {
                        model: 6
                        Label {
                            width: 20
                            height: 20
                            font.pixelSize: 36
                            text: "*"
                            Layout.alignment: Qt.AlignCenter
                            color: index <= passwordContainer.text.length - 1 ? "black" : "light gray"
                        }
                    }
                }
            }

            GridLayout {
                id: keypad
                rows: 4
                columns: 3
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                Layout.topMargin: 20
                Button {
                    text: "1"
                    implicitWidth: 30
                    implicitHeight: 30
                    font.pixelSize: 20
                    onClicked: updatePassword("1")
                }

                Button {
                    text: "2"
                    implicitWidth: 30
                    implicitHeight: 30
                    font.pixelSize: 20
                    onClicked: updatePassword("2")
                }

                Button {
                    text: "3"
                    implicitWidth: 30
                    implicitHeight: 30
                    font.pixelSize: 20
                    onClicked: updatePassword("3")
                }

                Button {
                    text: "4"
                    implicitWidth: 30
                    implicitHeight: 30
                    font.pixelSize: 20
                    onClicked: updatePassword("4")
                }

                Button {
                    text: "5"
                    implicitWidth: 30
                    implicitHeight: 30
                    font.pixelSize: 20
                    onClicked: updatePassword("5")
                }

                Button {
                    text: "6"
                    implicitWidth: 30
                    implicitHeight: 30
                    font.pixelSize: 20
                    onClicked: updatePassword("6")
                }

                Button {
                    text: "7"
                    implicitWidth: 30
                    implicitHeight: 30
                    font.pixelSize: 20
                    onClicked: updatePassword("7")
                }

                Button {
                    text: "8"
                    implicitWidth: 30
                    implicitHeight: 30
                    font.pixelSize: 20
                    onClicked: updatePassword("8")
                }

                Button {
                    text: "9"
                    implicitWidth: 30
                    implicitHeight: 30
                    font.pixelSize: 20
                    onClicked: updatePassword("9")
                }

                Button {
                    text: "<="
                    implicitWidth: 30
                    implicitHeight: 30
                    font.pixelSize: 14
                    onClicked: removeLastSymbol()

                }

                Button {
                    text: "0"
                    implicitWidth: 30
                    implicitHeight: 30
                    font.pixelSize: 20
                    onClicked: updatePassword("0")
                }

                Button {
                    text: "clear"
                    implicitWidth: 30
                    implicitHeight: 30
                    font.pixelSize: 10
                    onClicked: {
                        passwordContainer.text = ""
                        currentIndex = 0
                    }
                }

            }
        }
    }
}
