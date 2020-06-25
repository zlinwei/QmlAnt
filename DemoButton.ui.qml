import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

import "ant" as Ant

Page {
    id: page
    width: 600
    height: 400

    property alias primaryBtn: primaryBtn

    title: qsTr("Demo Button")

    ColumnLayout {
        id: columnLayout
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 10
        anchors.leftMargin: 10
        spacing: 10

        Ant.Button {
            id: primaryBtn
            text: qsTr("Primary")
            role: Ant.Style.primary
        }

        Ant.Button {
            text: qsTr("Success")
            role: Ant.Style.success
        }

        Ant.Button {
            text: qsTr("Warning")
            role: Ant.Style.warning
        }

        Ant.Button {
            text: qsTr("Error")
            role: Ant.Style.error
        }

        Ant.Button {
            text: qsTr("Default")
            role: Ant.Style.default_
        }

        Ant.Button {
            text: qsTr("Primary Default")
            role: Ant.Style.primaryDefault
        }

        Ant.Button {
            text: qsTr("Success Default")
            role: Ant.Style.successDefault
        }

        Ant.Button {
            text: qsTr("Warning Default")
            role: Ant.Style.warningDefault
        }

        Ant.Button {
            text: qsTr("Error Default")
            role: Ant.Style.errorDefault
        }
    }

    ColumnLayout {
        anchors.left: columnLayout.right
        anchors.leftMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 10

        Ant.Button {
            text: qsTr("Primary")
            role: Ant.Style.primary
            icon.source: "/ant/iconfont.cn/auto.svg"
        }

        Ant.Button {
            text: qsTr("Success")
            role: Ant.Style.success
            icon.source: "/ant/iconfont.cn/conditions.svg"
        }

        Ant.Button {
            text: qsTr("Warning")
            role: Ant.Style.warning
            icon.source: "/ant/iconfont.cn/pic.svg"
        }
    }
}
