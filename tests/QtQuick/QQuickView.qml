import QtQuick 2.0

Rectangle {
    id: page
    width: 320; height: 480
    color: "lightgray"

    Text {
        id: helloText
        text: "Teste da classe QQuickView"
        y: 30
        anchors.horizontalCenter: page.horizontalCenter
        font.pointSize: 12; font.bold: true
    }

    Rectangle {
        id: rect1
        width: 160; height: 240
        x:80
        y:80
        color: "darkgray"
    }

}
