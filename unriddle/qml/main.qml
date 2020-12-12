import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.4
import QtQuick.Layouts 1.12
import "models"


ApplicationWindow
{
    id:appWnd

    property int largeFont: 22
    property int smallFont: 14
    property string localFont: _localFont.name

    Material.theme: Material.Light
    //Material.theme: Material.Dark
    Material.accent: Material.BlueGrey

    visible: true
    /**
      * Базовой является плотность mdpi, когда 1px = 1dp.
      * Остальные являются множителями:
      * ldpi(0.75x),mdpi(1x),hdpi(1.5x),xhdpi(2.0x),xxhdpi(3.0x),xxxhdpi(4.0x)
      */
    width: 480
    height: 720
    title: qsTr("Unriddle this riddle.")

    FontLoader {
        id: _localFont;
        source: "qrc:///res/fonts/DroidSansFallback.ttf"
    }

    GridView {
        id: gridView
        anchors.fill: parent

        model: chipherTextModel
        property int m_itemsCount: model.rowCount

        clip:true
        focus: true

        cellWidth: 65
        cellHeight: 65

        delegate: CellDelegate{
            textOpen: model.openletter
            textClose:  model.closeletter +" ( "+ model.closelettercount +" ) "
            //textCount: "("+ model.closelettercount +")"

            MouseArea{
                anchors.fill: parent
                hoverEnabled: true
                onHoveredChanged: gridView.currentIndex = index
                onClicked: {
                    console.log(gridView.model.modeldata)
                }
            }
        }

        header: headerComponent


    }

    Component {
        id: headerComponent

        Rectangle {
            width: GridView.view.width
            color: "red"
            height: 20
            Text {
                id: name
                text: "Item count:"+gridView.m_itemsCount;

            }
        }
    }
}

