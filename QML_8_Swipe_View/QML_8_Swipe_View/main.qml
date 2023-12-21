import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Window {
    width: 320
    height: 480
    visible: true

    Rectangle {
        width: parent.width - 0.1*parent.width
        height: parent.height
        color: "transparent"
        border.color: "black"
        border.width: 2
        radius: 10
        anchors.centerIn: parent

        SwipeView {
            id: view
            interactive: SwipeView.ForceElasticity
            currentIndex: 1
            anchors.fill: parent

            Item {
                Rectangle {
                      width: parent.width
                      height: parent.height
                      color: "red"
                }

            }
            Item {
                Rectangle {
                      width: parent.width
                      height: parent.height
                      color: "yellow"
                }

            }
            Item {
                Rectangle {
                      width: parent.width
                      height: parent.height
                      color: "green"
                }

            }
        }
    }

    PageIndicator {
        id: indicator
        count: view.count
        currentIndex: view.currentIndex
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
