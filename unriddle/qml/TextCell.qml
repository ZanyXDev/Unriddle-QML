import QtQuick 2.11
import QtQuick.Layouts 1.11

/**
  * Свойства GridLayout:
  * columns : int - количество колонок;
  * rows : int - количество строк;
  * columnSpacing : real - пробелы между колонками (разрыв между объектами);
  * rowSpacing : real - пробелы между строками (разрыв между объектами);
  * flow : enumeration - направление расположения объектов в GridLayout
  *                      GridLayout.LeftToRight (default) - слева направо
  *                      GridLayout.TopToBottom - сверху вниз
  * layoutDirection : enumeration - направление перечисления объектов
  * при заданном flow Qt.LeftToRight (default) - слева направо
  *                   Qt.RightToLeft - справа налево
  *
  * в GridLayout необходимо использовать функционал вложенных свойств Layout.
  * Layout.row - указывает строку, в которой располагается объект;
  * Layout.column - указывает колонку, в которой располагается объект;
  * Layout.rowSpan - указывает, на сколько строк должен быть растянут объект;
  * Layout.columnSpan - указывает, на сколько колонок должен быть растянут объект;
  * Layout.minimumWidth - минимальная ширина объекта в слое;
  * Layout.minimumHeight - минимальная высота объекта в слое;
  * Layout.preferredWidth - предпочтительная ширина объекта в слое;
  * Layout.preferredHeight - предпочтительная высота объекта в слое;
  * Layout.maximumWidth - максимальная ширина объекта в слое;
  * Layout.maximumHeight - максимальная высота объекта в слое;
  * Layout.fillWidth - заполнение по ширине;
  * Layout.fillHeight - заполнение по высоте;
  * Layout.alignment - выравнивание в слое;
  */
Item {
    id:root
    width: 64
    height: 64
    // export TextCell properties
    property alias textOpen:  textOpen.text
    property alias textClose: textClose.text
    property alias textCount: textCount.text

    property alias colorOpenText: textOpen.color
    property alias colorCloseText: closeTextBackground.color
    property alias colorCounter: countTextBackground.color

    signal clicked

    Rectangle {
        border.color: Qt.lighter("grey")
        border.width: 1
        anchors.fill: parent
        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.clicked();
                console.log("Rectangle clicked");
            }
        }

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
                //color: "red"
                Layout.row: 1
                Layout.column: 1
                Layout.columnSpan: 2
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true

                Text {
                    id: textOpen
                    text: qsTr("A")
                    color: "red"
                    anchors.fill: parent

                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pixelSize: appWnd.largeFont
                    font.bold: true
                    font.family: appWnd.localFont
                }

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
                Text {
                    id: textClose
                    text: qsTr("B")
                    anchors.fill: parent

                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter

                    font.pixelSize: appWnd.smallFont
                    font.bold: true
                    font.family: appWnd.localFont
                }
            }
            Rectangle {
                id: countTextBackground
                color: "#3465a4"

                Layout.row: 2
                Layout.column: 2
                Layout.columnSpan: 1
                Layout.rowSpan: 1

                Layout.fillHeight: true
                Layout.fillWidth: true
                Text {
                    id: textCount
                    text: qsTr("32")
                    anchors.fill: parent

                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.family: appWnd.localFont
                    font.pixelSize: appWnd.smallFont
                }
            }
        }
    }
}


