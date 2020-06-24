/****************************************************************************
**
** Copyright (C) 2017 The Qt Company Ltd.
** Contact: http://www.qt.io/licensing/
**
** This file is part of the Qt Quick Controls 2 module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:LGPL3$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see http://www.qt.io/terms-conditions. For further
** information use the contact form at http://www.qt.io/contact-us.
**
** GNU Lesser General Public License Usage
** Alternatively, this file may be used under the terms of the GNU Lesser
** General Public License version 3 as published by the Free Software
** Foundation and appearing in the file LICENSE.LGPLv3 included in the
** packaging of this file. Please review the following information to
** ensure the GNU Lesser General Public License version 3 requirements
** will be met: https://www.gnu.org/licenses/lgpl.html.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 2.0 or later as published by the Free
** Software Foundation and appearing in the file LICENSE.GPL included in
** the packaging of this file. Please review the following information to
** ensure the GNU General Public License version 2.0 requirements will be
** met: http://www.gnu.org/licenses/gpl-2.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.impl 2.12
import QtQuick.Templates 2.12 as T
import QtQuick.Controls.Material 2.0

//contentItem: Text {
//    text: control.text
//    font: control.font
//    opacity: enabled ? 1.0 : 0.9
//    color: control.down ? "#ffffff" : "#ffffff"
//    horizontalAlignment: Text.AlignHCenter
//    verticalAlignment: Text.AlignVCenter
//    elide: Text.ElideRight
//}

//background: Rectangle {
//    color: control.hovered && !control.down ? "#40a9ff" : "#1890ff"
//    implicitWidth: control.btnWidth
//    implicitHeight: control.btnHeight
//    opacity: enabled ? 1 : 0.3
//    border.color: control.hovered ? "#40a9ff" : "#1890ff"
//    border.width: 1
//    radius: 2
//}


T.Button {
    default property QtObject role: Style.primary


    id: control

    implicitWidth: Math.max(implicitBackgroundWidth + leftInset + rightInset,
                            implicitContentWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(implicitBackgroundHeight + topInset + bottomInset,
                             implicitContentHeight + topPadding + bottomPadding)

    padding: icon.source==""?6:2
    horizontalPadding: padding + 2
    spacing: icon.source==""?6:2

    icon.width: 24
    icon.height: 24
//    icon.color: control.checked || control.highlighted ? control.palette.brightText :
//                                                         control.flat && !control.down ? (control.visualFocus ? control.palette.highlight : control.palette.windowText) : control.palette.buttonText
    icon.color: control.hovered && !control.down ? role.textHoverColor: role.textColor
    contentItem: IconLabel {
        spacing: control.spacing
        mirrored: control.mirrored
        display: control.display

        icon: control.icon
        text: control.text
        font: control.font
        //        color: control.checked || control.highlighted ? control.palette.brightText :
        //               control.flat && !control.down ? (control.visualFocus ? control.palette.highlight : control.palette.windowText) : control.palette.buttonText
        color: control.hovered && !control.down ? role.textHoverColor: role.textColor
    }

    background: Rectangle {
        id: bgRect
        implicitWidth: 100
        implicitHeight: 25
        visible: !control.flat || control.down || control.checked || control.highlighted
        //        color: Color.blend(control.checked || control.highlighted ? control.palette.dark : control.palette.button,
        //                                                                    control.palette.mid, control.down ? 0.5 : 0.0)
        border.color: control.hovered && !control.down ? role.borderHoverColor: role.borderColor
        color: control.hovered && !control.down ? role.bgHoverColor : role.bgColor
        border.width: 1
        radius: 2
    }

    onClicked:{
        //TODO add animation

    }


}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
