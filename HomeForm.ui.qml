import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

import "ant" as Ant

Page {
    id: page
    width: 600
    height: 400

    title: qsTr("Home")

    ColumnLayout {
        id: columnLayout
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 10
        anchors.leftMargin: 10
        spacing: 10
    }

    ColumnLayout {
        anchors.left: columnLayout.right
        anchors.leftMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 10
    }
}
