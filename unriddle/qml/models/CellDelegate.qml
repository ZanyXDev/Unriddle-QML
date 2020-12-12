import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12
import QtQuick.Templates 2.4 as T

T.ItemDelegate {
    id: cellDelegate
    width: 64
    height: 64

    highlighted: GridView.isCurrentItem

    contentItem: Rectangle{
         anchors.fill: parent
         anchors.margins: 2
         color:"grey"
    }



    background: Rectangle {
        anchors.fill: cellDelegate
        color: cellDelegate.highlighted ? "blue" : "transparent"
    }

}


/**
Item {
    id:cellDelegate
    width: 64
    height: 64
    signal clicked()
    // export TextCell properties
    // property alias textOpen:  textOpen.text
    //property alias textClose: textClose.text
    //property alias textCount: textCount.text
    property alias backgroundBorder: backgroundDelegate.border
    Rectangle {
        id:backgroundDelegate
        radius: 2
        border.color: Qt.lighter("grey")
        border.width: 1
        anchors.fill: parent

        GridLayout {
            id: grid
            anchors.fill: parent
            columnSpacing: 1
            rowSpacing: 1

            anchors.rightMargin: 2
            anchors.leftMargin: 2
            anchors.bottomMargin: 2
            anchors.topMargin: 2

            Rectangle {
                id: openTextBackground
                color: "red"
                Layout.row: 1
                Layout.column: 1
                Layout.columnSpan: 2
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
            Rectangle {
                id: closeTextBackground
                color: "green"

                Layout.row: 2
                Layout.column: 1
                Layout.columnSpan: 1
                Layout.rowSpan: 1

                Layout.fillHeight: true
                Layout.fillWidth: true
            }
            Rectangle {
                id: countTextBackground
                color: "black"

                Layout.row: 2
                Layout.column: 2
                Layout.columnSpan: 1
                Layout.rowSpan: 1

                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                cellDelegate.clicked();
                console.log("cellDelegate clicked");
            }
        }
    }
}
*/
