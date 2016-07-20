import QtQuick 2.0

Item {
    id: button1
    property string backColor
    property string bordercolor

    //onEnter change's
    property string enteredColor
    property double enteredScale
    property string enteredBorderColor

    //onExit chhanges
    property string exitedColor
    property double exitedScale
    property string exitedBorderColor

    property bool hoverEnabled:false




    Rectangle {
        id: rec111
        width: 100
        height: 100
        color: "brown"
        anchors.centerIn: parent




        Text {
            text: qsTr("rec111. ")
            wrapMode: Text.WrapAnywhere
        }
    }
    MouseArea {
        id: ma111
        /*********************************/

        anchors.fill: rec111
        hoverEnabled: button1.hoverEnabled
        onEntered: {
            rec111.color = button1.enteredColor
            rec111.scale = button1.enteredScale
            rec111.rotation += 45
            console.log("onEntered111")
        }

        onExited:  {
            rec111.color = button1.exitedColor
            rec111.scale = button1.exitedScale
            rec111.rotation +=45
            console.log("onExited1111")
        }

        onDoubleClicked: {
            rec111.color = "red"
            console.log("on Doubleclick111")

        }

}
}
