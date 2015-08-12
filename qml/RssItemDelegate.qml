import QtQuick 2.0

Item {
    id: root

    width: 100
    height: 50

    property alias headline: headline.text
    property alias summary: summary.text

    Rectangle{
        id: image
        anchors.left: parent.left
        anchors.leftMargin: 10

        border.color: "blue"
        border.width: 1

        color: "lightgray"

        width: 50
        height: 50
    }

    Text{
        id: headline

        anchors.left: image.right
        anchors.top: image.top

        anchors.leftMargin: 10

        font.bold: true

        text: "Headline"
    }

    Text{
        id: summary

        anchors.top: headline.bottom
        anchors.left: headline.left

        text: "this is a summary text... bla bla bla"
    }
}

