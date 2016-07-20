import QtQuick 2.4
import QtQuick.Window 2.2

Window {
    visible: true
    width: 1000
    height: 1000
    Rectangle {
        id: rec1
        width: 360
        height: 360
        color: "red"
        gradient: Gradient {
            GradientStop { position: 0.0; color: "lightsteelblue" }
            GradientStop { position: 1.0; color: "red" }
        }
        anchors.centerIn: parent
        Text {
            text: qsTr("rec1")
        }
        border.color: "black"
        border.width: 10
    }

    Rectangle {
        id: rec2
        width: 100
        height: 100
        color: "blue"
        anchors.centerIn: rec1

        Text {
            text: qsTr("rec2. ")
            wrapMode: Text.WrapAnywhere
        }
    }

    MyButton{
        enteredColor: "red"
        enteredScale: 2
        enteredBorderColor:  "yellow"
        exitedColor: "yellow"
        exitedScale: 1
        exitedBorderColor: "red"
        hoverEnabled: true

    }

    Rectangle {
        id: rec3
        y: 190
        width: 100
        height: 100
        color: "blue"
        anchors.left: rec1.right
        anchors.leftMargin: 5
        anchors.verticalCenter: rec1.verticalCenter

        Text {
            text: qsTr("rec3. ")
            wrapMode: Text.WrapAnywhere
        }
    }

    Rectangle {
        id: rec4
        y: 190
        width: 100
        height: 100
        color: "blue"
        anchors.right: rec1.left
        anchors.rightMargin:  5
        anchors.verticalCenter: rec1.verticalCenter

        Text {
            text: qsTr("rec4. ")
            wrapMode: Text.WrapAnywhere
        }
    }

    Rectangle {
        id: rec5
        y: 190
        width: 100
        height: 100
        color: "blue"
        anchors.bottom: rec1.top
        anchors.bottomMargin:  5
        anchors.horizontalCenter: rec1.horizontalCenter

        Text {
            text: qsTr("rec5. ")
            wrapMode: Text.WrapAnywhere
        }
    }

    Rectangle {
        id: rec6
        y: 190
        width: 100
        height: 100
        color: "blue"
        anchors.top: rec1.bottom
        anchors.topMargin:   5
        anchors.horizontalCenter: rec1.horizontalCenter

        Text {
            text: qsTr("rec6. ")
            wrapMode: Text.WrapAnywhere
        }
    }

    Rectangle {
        id: rec7
        y: 190
        width: 100
        height: 100
        color: "blue"

        anchors.right:  rec5.left
        anchors.rightMargin: 15
        anchors.verticalCenter: rec5.verticalCenter

        Text {
            text: qsTr("rec7. ")
            wrapMode: Text.WrapAnywhere
        }
    }

    Rectangle {
        id: rec8
        y: 190
        width: 100
        height: 100
        color: "blue"

        anchors.left:  rec5.right
        anchors.leftMargin: 15
        anchors.verticalCenter: rec5.verticalCenter

        Text {
            text: qsTr("rec8. ")
            wrapMode: Text.WrapAnywhere
        }
    }

    Rectangle {
        id: rec10
        y: 190
        width: 100
        height: 100
        color: "blue"

        anchors.right:  rec6.left
        anchors.rightMargin: 15
        anchors.verticalCenter: rec6.verticalCenter

        Text {
            text: qsTr("rec10. ")
            wrapMode: Text.WrapAnywhere
        }
    }

    Rectangle {
        id: rec11
        y: 190
        width: 100
        height: 100
        color: "blue"

        anchors.left:  rec6.right
        anchors.leftMargin: 15
        anchors.verticalCenter: rec6.verticalCenter

        Text {
            text: qsTr("rec11. ")
            wrapMode: Text.WrapAnywhere
        }
    }


    Rectangle {
        id: rec12
        y: 190
        width: 100
        height: 100
        color: "blue"

        anchors.bottom:  rec4.top
        anchors.bottomMargin: 15
        anchors.horizontalCenter: rec4.horizontalCenter

        Text {
            text: qsTr("rec12. ")
            wrapMode: Text.WrapAnywhere
        }
    }

    Rectangle {
        id: rec13
        y: 190
        width: 100
        height: 100
        color: "blue"

        anchors.top:  rec4.bottom
        anchors.topMargin: 15
        anchors.horizontalCenter: rec4.horizontalCenter

        Text {
            text: qsTr("rec13. ")
            wrapMode: Text.WrapAnywhere
        }
    }

    Rectangle {
        id: rec14
        y: 190
        width: 100
        height: 100
        color: "blue"

        anchors.bottom:  rec3.top
        anchors.bottomMargin: 15
        anchors.horizontalCenter: rec3.horizontalCenter

        Text {
            text: qsTr("rec14. ")
            wrapMode: Text.WrapAnywhere
        }
    }

    Rectangle {
        id: rec15
        y: 190
        width: 100
        height: 100
        color: "blue"

        anchors.top:  rec3.bottom
        anchors.topMargin: 15
        anchors.horizontalCenter: rec3.horizontalCenter

        Text {
            text: qsTr("rec15. ")
            wrapMode: Text.WrapAnywhere
        }
    }

    MouseArea {
        id: ma1
        /*********************************/

        anchors.fill: rec2
        hoverEnabled: true
        onEntered: {
            rec2.color = "yellow"
            rec2.rotation += 45
            console.log("onEntered")
        }

        onExited:  {
            rec2.color = "blue"
            rec2.rotation +=45
            console.log("onExited")
        }

        onDoubleClicked: {
            rec2.color = "red"
            console.log("on Doubleclick")

        }



//        onWheel: {
//            rec2.rotation += 45
//        }

        onPressAndHold: {
            var check = true;
            if(check == true)
            rec2.rotation +=45
            console.log("on press and hold")
        }

        onClicked: {
            //Qt.quit();
            console.log("on clicked")
            if((mouse.modifiers & Qt.AltModifier) && (mouse.button == Qt.LeftButton))
                Qt.quit();
        }

    }

    Text {
        text: qsTr("START")
        anchors.centerIn: parent
        font.pixelSize: Math.round(rec1.height/18.5)
    }
}
