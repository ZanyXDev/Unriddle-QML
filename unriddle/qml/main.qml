import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Controls.Material 2.4
import QtQuick.Layouts 1.11


ApplicationWindow
{
    id:mainwindow
    visible: true

    title: qsTr("Minimal Qml")

    FontLoader { id: localFont; source: "qrc:///res/fonts/DroidSansFallback.ttf" }

    // theme
    font.family: localFont.name
    font.pointSize: Style.font_default_size
    font.capitalization: Style.font_default_capitalization

    //Material.theme: Style.material_theme
    //Material.accent: Style.material_accent

    Grid{
        anchors.fill: parent
        anchors.margins: 8
        spacing: 4
        Repeater {
            model: 24
            TextCell{}
        }
    }
}



/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
