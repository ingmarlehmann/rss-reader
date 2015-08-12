import QtQuick 2.0

Rectangle {
    id: root

    //width: 100
    //height: 62

    Rectangle{
        id: leftColumn
        //anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom

        width: 200
        height: 400

        color: "lightblue"

        ListView{
            id: feedList
            anchors.fill: parent

            model: feedListModel

            delegate: Text{
                text: name
                anchors.right: parent.right
            }
        }
    }


    Text{
        id: centerText
        anchors.centerIn: parent

        text: "hello cruel World"
        color: "black"
    }

    // Temporary, will use real data later
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
        ListElement{
            name: "Blah"
            link: ""
        }
        ListElement{
            name: "Boooga booga"
            link: ""
        }
    }
}

