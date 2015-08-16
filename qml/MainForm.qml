import QtQuick 2.0
import QtWebKit 3.0

Item {
    id: root

    Row{
        id: rowLayout

        anchors.centerIn: parent
        anchors.fill: parent

        Rectangle{
            id: leftColumn

            width: 250
            height: parent.height

            color: "lightgray"

            ListView{
                id: feedList

                anchors.topMargin: 10
                anchors.fill: parent

                model: feedListModel

                delegate: RssItemDelegate{
                    anchors.left: parent.left

                    width: parent.width

                    clip: true

                    // This weirdness is due to naming ambiguity,
                    // the model has the same name as the delegate.
                    // TODO: Find out if there is a nicer way to
                    // achieve this (besides the obvious renaming)
                    headline: feedListModel.get(index).headline
                    summary: feedListModel.get(index).summary
                }
            }
        }

        WebView{
            id: webView

            height: parent.height
            width: parent.width-leftColumn.width

            url: 'http://slashdot.org/'
        }
    } // Row

    // Temporary, will use real data later
    ListModel{
        id: feedListModel

        ListElement{
            headline: "I shot the sheriff"
            summary: "But I didn't shoot no deputy, oh no!"
            link: ""
        }
        ListElement{
            headline: "Kungen har en ny kaffeflicka"
            summary: "Wow, mycket spännande, måste läsa!"
            link: ""
        }
        ListElement{
            headline: "Blah"
            summary: "Out of ideas"
            link: ""
        }
        ListElement{
            headline: "Boooga booga"
            summary: "Wooga wooga"
            link: ""
        }
    }
}
