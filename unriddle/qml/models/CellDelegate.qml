import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12
import QtQuick.Templates 2.4 as T

T.ItemDelegate {    
    id: cellDelegate

    property alias textOpen:  textOpen.text
    property alias textOpenColor:  textOpen.color
    property alias textClose:  textClose.text
    //property alias textCount:  textCount.text
    width: 64
    height: 64
    highlighted: GridView.isCurrentItem

    contentItem: Rectangle {
        anchors.fill: cellDelegate
        color: "white"
        anchors.margins: 2

        GridLayout{
            id:cardGridLayout
            anchors.fill: parent
            anchors.margins: 2
            columnSpacing: 1
            rowSpacing: 1


            Text {
                id: textOpen
                color:cellDelegate.highlighted ? "red" : "black"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: appWnd.largeFont
                font.bold: true
                font.family: appWnd.localFont
                // attached property
                Layout.row: 1
                Layout.column: 1
                Layout.columnSpan: 1
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Text {
                id: textClose

                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter

                font.pixelSize: appWnd.smallFont
                font.bold: true
                font.family: appWnd.localFont

                // attached property
                Layout.row: 2
                Layout.column: 1
                Layout.columnSpan: 1
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
            /**
            Text {
                id: textCount
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.family: appWnd.localFont
                font.pixelSize: appWnd.smallFont

                // attached property
                Layout.row: 2
                Layout.column: 2
                Layout.columnSpan: 1
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
            */
        }
    }

    background: Rectangle {
        //z:3
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
