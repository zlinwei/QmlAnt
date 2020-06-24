import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.0

import "./ant" as Ant

Ant.ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Stack")

    flags: Qt.MaximizeUsingFullscreenGeometryHint;


    header: ToolBar {
        contentHeight: toolButton.implicitHeight
        topPadding: Screen.width < 768? Screen.height * 0.05: 0

        ToolButton {
            id: toolButton
            text: stackView.depth > 1 ? "\u25C0" : "\u2630"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                } else {
                    drawer.open()
                }
            }
        }

        Label {
            text: stackView.currentItem.title
            anchors.centerIn: parent
        }

        Component.onCompleted: {
            console.log("os: " ,Qt.platform.os)
            console.log("screen.width: " ,Screen.width)
            console.log("window.width: " ,window.width)

        }
    }

    Drawer {
        id: drawer
        width: window.width * 0.66
        height: window.height

        Column {
            anchors.fill: parent
            topPadding: Screen.width < 768? Screen.height * 0.05: 0

            ItemDelegate {
                text: qsTr("Page 1")
                width: parent.width
                onClicked: {
                    console.log("page 1")
                }
            }
            ItemDelegate {
                text: qsTr("Page 2")
                width: parent.width
                onClicked: {
                    //                    stackView.push("Page2Form.ui.qml")
                    //                    drawer.close()
                    console.log("page 2")
                }
            }
        }
    }

    StackView {
        id: stackView
        initialItem: "Home.qml"
        anchors.fill: parent
    }
}
