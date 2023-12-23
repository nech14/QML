import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 400
    height: 300

    ColumnLayout {
        anchors.centerIn: parent
        width: parent.width * 0.6

        TextField {
            id: usernameField
            placeholderText: "Username"
            Layout.fillWidth: true
            implicitHeight: 30
            font.pixelSize: 18
            horizontalAlignment: Qt.AlignHCenter
            verticalAlignment: Qt.AlignVCenter
        }

        TextField {
            id: passwordField
            placeholderText: "Password"
            Layout.fillWidth: true
            implicitHeight: 30
            font.pixelSize: 18
            echoMode: TextInput.Password
            horizontalAlignment: Qt.AlignHCenter
            verticalAlignment: Qt.AlignVCenter
        }

        RowLayout {
            Layout.alignment: Qt.AlignHCenter
            spacing: 80

            Button {
                text: "Submit"

                implicitWidth: 80
                implicitHeight: 40
            }

            Button {
                text: "Clear"
                onClicked: {
                    passwordField.text = ""
                    usernameField.text = ""
                }

                implicitWidth: 80
                implicitHeight: 40
            }
        }
    }
}
