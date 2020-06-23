pragma Singleton
import QtQuick 2.0

QtObject {
    property QtObject default_: QtObject{
        property color bgColor: "#ffffff"
        property color bgHoverColor: "#ffffff"
        property color textColor: Qt.rgba(0,0,0,0.65)
        property color textHoverColor: "#1890ff"
        property color borderColor: Qt.rgba(0,0,0,0.65)
        property color borderHoverColor: "#1890ff"
    }

    property QtObject primary: QtObject{
        property color bgColor: "#1890ff"
        property color bgHoverColor: "#69c0ff"
        property color textColor:"#ffffff"
        property color textHoverColor: "#ffffff"
        property color borderColor: "#1890ff"
        property color borderHoverColor: "#69c0ff"
    }

    property QtObject primaryDefault: QtObject{
        property color bgColor: "#ffffff"
        property color bgHoverColor: "#ffffff"
        property color textColor:"#1890ff"
        property color textHoverColor: "#69c0ff"
        property color borderColor: "#1890ff"
        property color borderHoverColor: "#69c0ff"
    }

    property QtObject  success: QtObject{
        property color bgColor: "#52c41a"
        property color bgHoverColor: "#95de64"
        property color textColor:"#ffffff"
        property color textHoverColor: "#ffffff"
        property color borderColor: "#52c41a"
        property color borderHoverColor: "#95de64"
    }

    property QtObject  successDefault: QtObject{
        property color bgColor: "#ffffff"
        property color bgHoverColor: "#ffffff"
        property color textColor:"#52c41a"
        property color textHoverColor: "#95de64"
        property color borderColor: "#52c41a"
        property color borderHoverColor: "#95de64"
    }

    property QtObject  warning: QtObject{
        property color bgColor: "#faad14"
        property color bgHoverColor: "#ffd666"
        property color textColor:"#ffffff"
        property color textHoverColor: "#ffffff"
        property color borderColor: "#faad14"
        property color borderHoverColor: "#ffd666"
    }

    property QtObject  warningDefault: QtObject{
        property color bgColor: "#ffffff"
        property color bgHoverColor: "#ffffff"
        property color textColor:"#faad14"
        property color textHoverColor: "#ffd666"
        property color borderColor: "#faad14"
        property color borderHoverColor: "#ffd666"
    }

    property QtObject  error: QtObject{
        property color bgColor: "#f5222d"
        property color bgHoverColor: "#ff7875"
        property color textColor:"#ffffff"
        property color textHoverColor: "#ffffff"
        property color borderColor: "#f5222d"
        property color borderHoverColor: "#ff7875"
    }

    property QtObject  errorDefault: QtObject{
        property color bgColor: "#ffffff"
        property color bgHoverColor: "#ffffff"
        property color textColor:"#f5222d"
        property color textHoverColor: "#ff7875"
        property color borderColor: "#f5222d"
        property color borderHoverColor: "#ff7875"
    }


}

