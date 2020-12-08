import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Controls.Material 2.4
import QtQuick.Layouts 1.11


ApplicationWindow
{
    id:appWnd

    property int largeFont: 22
    property int smallFont: 14
    property string localFont: _localFont.name

    Material.theme: Material.Dark
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

    Grid{
        anchors.fill: parent
        anchors.margins: 4
        spacing: 1
        Repeater {
            model: 24
            TextCell{
                textOpen: "Я"
                textClose: "О"
                textCount:  index
                colorOpenText:  Material.color( Material.Red )
                colorCloseText:  Material.color( Material.Grey)
                colorCounter:  Material.color( Material.Grey)
            }
        }
    }
}

