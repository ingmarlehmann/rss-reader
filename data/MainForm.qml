import QtQuick 2.0

Rectangle {
    id: root

    width: 100
    height: 62

    ListModel{
        id: feedListModel

        ListElement{
            name: "hackaday"
            link: ""
        }
        ListElement{
            name: "The Guardian"
            link: ""
        }
    }

    ListView{
        id: feedList
        anchors.left: parent.left

        width: 100
        height: parent.height

        model: feedListModel

        delegate: Text{
            text: name
        }
    }

    Text{
        id: centerText
        anchors.centerIn: parent

        text: "hello cruel World"
        color: "black"
    }

}

