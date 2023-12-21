import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Window {
    width: 360
    height: 640
    visible: true
    title: qsTr("StackView_test")
    property int defMargin: 10

    StackView {
        id: stack_view
        anchors.fill: parent
        initialItem: page1
    }

    MyPage {
        id: page1
        visible: false
        backgroundColor: "red"
        buttonText: "To_Yellow"
        onButtonClicked: {
            stack_view.push(page3)
        }

        Button {
            text: "Back"
            onClicked: {
                stack_view.push(page2)
            }
        }
    }

    MyPage {
        id: page3
        visible: false
        backgroundColor: "yellow"
        buttonText: "To_Green"
        onButtonClicked: {
            stack_view.push(page2)
        }

        Button {
            text: "Back"
            onClicked: {
                stack_view.pop()
            }
        }
    }

    MyPage {
        id: page2
        visible: false
        backgroundColor: "green"
        buttonText: "To_Red"
        onButtonClicked: {
            stack_view.pop(page1)
        }

        Button {
            text: "Back"
            onClicked: {
                stack_view.pop()
            }
        }
    }
}
