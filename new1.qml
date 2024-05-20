import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.4

//Window {
//    id:root
//    visible: true
//    width: 640
//    height: 480
//    title: qsTr("Hello World")
//    Rectangle{
//        id:rec1
//        height: 200
//        width: 200
//        anchors.fill: parent
//        //color: "red"



//    Column {
//        spacing: 2

//        Repeater {
//            model: ListModel {
//                ListElement { name: "Mercury"; surfaceColor: "gray" }
//                ListElement { name: "Venus"; surfaceColor: "yellow" }
//                ListElement { name: "Earth"; surfaceColor: "blue" }
//                ListElement { name: "Mars"; surfaceColor: "orange" }
//                ListElement { name: "Jupiter"; surfaceColor: "orange" }
//                ListElement { name: "Saturn"; surfaceColor: "yellow" }
//                ListElement { name: "Uranus"; surfaceColor: "lightBlue" }
//                ListElement { name: "Neptune"; surfaceColor: "lightBlue" }
//            }

//            GreenBox {
//                width: rec1.width
//                height: rec1.height

//                //radius: 3
//                text: name


//            }
//        }
//    }
//}
//}

import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.4
import QtQml.Models 2.11
//import com.yourcompany.models 1.0
//import "D:/Learn -QT-QML/project5/new2.qml"
//import "DetailItem.qml"
//import "demo.qml"

Window {
    id:root
    visible: true
    width: 400
    height: 800
    title: qsTr("Hello World")

    Rectangle {
        id:rect1
        height: root.height
        width: root.height/2
        anchors.centerIn: parent
        //anchors.fill: parent
        //color: "red"
        //opacity: 0.2
        border.color: "red"

        Rectangle {
            id:rect2
            width:parent.width
            height:parent.height/2
            //anchors.fill:rect1
            anchors.top:parent.top
            //color: "green"
            opacity: 0.5

//            //Display Detail Employee:
           GreenBox{
//                id: detailedInfoContainer
//                width: parent.width
//                height: parent.height-20
//                anchors.right: parent.right
//                anchors.top: parent.top
//                anchors.topMargin: 20
//                color: "lightblue"
//                border.color: "blue"
//                Column {
//                    //anchors.centerIn: parent
//                    anchors.right: parent.right
//                    anchors.left: parent.left
//                    anchors.leftMargin: 50
//                    anchors.rightMargin: 50
//                    spacing: 15

//                    Row {
//                        //spacing: 10
//                        anchors.topMargin: 100
//                        anchors.right: parent.right
//                        anchors.left: parent.left

//                        Text {
//                            text: "id:"
//                            font.pixelSize: 16
//                            color: "black"
//                            visible: false
//                        }
//                        TextField {
//                            id: idField
//                            width: parent.width
//                            visible: false
//                        }
//                    }
////                    Rectangle{
////                        height: parent.height
////                        width:parent.width
////                        color: "red"
////                    }

//                    Row {
//                        spacing: 10
//                        anchors.topMargin: 100
//                        anchors.right: parent.right
//                        anchors.left: parent.left
//                        Rectangle {
//                             height: 30
//                             width: 30
//                            // anchors.left:parent.left
//                            // anchors.right: parent.right
//                             //color: "yellow"


//                             visible: false

//                             Text {
//                                 text: "name:"
//                                 font.pixelSize: 16
//                                 color: "black"
//                                 visible: false
//                             }
//                         }
//                         Rectangle {
//                             height: 30
//                             width: parent.width
//                             color: "pink"
//                             TextField {
//                                 id: nameField
//                                 width: parent.width
//                                 font.pixelSize: 24
//                                 font.bold: true
//                             }
//                         }

//                    }

//                    Row {

//                        spacing: 10
//                        //width: detailedInfoContainer.width
//                        Rectangle {
//                            id:image1
//                            height: 45
//                            width: 45

//                            Image {
//                                anchors.fill: parent
//                                source: "src/img1.png"
//                            }
//                        }

//                        Rectangle {
//                            height: 45
//                            width: rect2.width -265
//                            //color: "yellow"

//                            Text {
//                                text: "Assembly"
//                                font.pixelSize: 22
//                                anchors.verticalCenter: parent.verticalCenter
//                                color: "black"
//                            }
//                        }
//                        Rectangle {
//                            height: 45
//                            width: 55
//                            border.color: "#BEBEBE"
//                            //color: "blue"
//                            TextField {
//                                id: sub1Field
//                                anchors.fill:parent
//                                font.pixelSize: 22
//                                //width: parent.width
//                            }
//                        }

//                        Rectangle {
//                            id: customCheckBox1
//                            width: 45
//                            height: 45
//                            color:sub1Field.text>= 3 ?"green": "red"
//                            radius: 45

//                            Text {
//                                anchors.centerIn: parent
//                                text: sub1Field.text>= 3 ? "✓" : "X"
//                                color: "white"
//                                font.pixelSize: 30
//                            }
//                        }
//                    }
//                    Row {

//                        spacing: 10
//                        Rectangle {
//                            id:image2
//                            height: 45
//                            width: 45

//                            Image {
//                                anchors.fill: parent
//                                source: "src/img2.png"
//                            }
//                        }
//                        Rectangle {
//                            height: 45
//                            width: rect2.width -265
//                            color: "yellow"
//                            Text {
//                                text: "C++"
//                                font.pixelSize: 22
//                                anchors.verticalCenter: parent.verticalCenter
//                                color: "black"
//                            }
//                        }
//                        Rectangle {
//                            height: 45
//                            width: 55
//                            border.color: "#BEBEBE"
//                            //color: "blue"
//                            TextField {
//                                id: sub2Field
//                                anchors.fill:parent
//                                font.pixelSize: 22
//                            }
//                        }
//                        Rectangle {
//                            id: customCheckBox2
//                            width: 45
//                            height: 45
//                            color:sub2Field.text>= 3 ?"green": "red"
//                            radius: 45

//                            Text {
//                                anchors.centerIn: parent
//                                text: sub2Field.text>= 3 ? "✓" : "X"
//                                color: "white"
//                                font.pixelSize: 30
//                            }
//                        }
//                    }
//                    Row {
//                        spacing: 10
//                        Rectangle {
//                            id:image3
//                            height: 45
//                            width: 45

//                            Image {
//                                anchors.fill: parent
//                                source: "src/img3.png"
//                            }
//                        }

//                        Rectangle {
//                            height: 45
//                            width: rect2.width -265
//                            color: "yellow"
//                            Text {
//                                text: "Java Script"
//                                font.pixelSize: 22
//                                anchors.verticalCenter: parent.verticalCenter
//                                color: "black"
//                            }
//                        }
//                        Rectangle {
//                            height: 45
//                            width: 55
//                            border.color: "#BEBEBE"
//                            //color: "blue"
//                            TextField {
//                                id: sub3Field
//                                anchors.fill:parent
//                                font.pixelSize: 22
//                            }
//                        }
//                        Rectangle {
//                            id: customCheckBox3
//                            width: 45
//                            height: 45
//                            color:sub3Field.text>= 3 ?"green": "red"
//                            radius: 45

//                            Text {
//                                anchors.centerIn: parent
//                                text: sub3Field.text>= 3 ? "✓" : "X"
//                                color: "white"
//                                font.pixelSize: 30
//                            }
//                        }

//                    }
//                    Row {
//                        spacing: 10
//                        Rectangle {
//                            id:image4
//                            height: 45
//                            width: 45

//                            Image {
//                                anchors.fill: parent
//                                source: "src/img4.png"
//                            }
//                        }
//                        Rectangle {
//                            height: 45
//                            width: rect2.width -265
//                            color: "yellow"
//                            Text {
//                                text: "QML"
//                                font.pixelSize: 22
//                                anchors.verticalCenter: parent.verticalCenter
//                                color: "black"
//                            }
//                        }

//                        Rectangle {
//                            height: 45
//                            width: 55
//                            border.color: "#BEBEBE"
//                            //color: "blue"
//                            TextField {
//                                id: sub4Field
//                                anchors.fill:parent
//                                font.pixelSize: 22
//                            }
//                        }
//                        Rectangle {
//                            id: customCheckBox4
//                            width: 45
//                            height: 45
//                            color:sub4Field.text>= 3 ?"green": "red"
//                            radius: 45

//                            Text {
//                                anchors.centerIn: parent
//                                text: sub4Field.text>= 3 ? "✓" : "X"
//                                color: "white"
//                                font.pixelSize: 30
//                            }
//                        }
//                    }

//                    Row {
//                        spacing: 10
//                        Rectangle {
//                            id:image5
//                            height: 45
//                            width: 45

//                            Image {
//                                anchors.fill: parent
//                                source: "src/img5.png"
//                            }
//                        }
//                        Rectangle {
//                            height: 45
//                            width: rect2.width -265
//                            color: "yellow"
//                            Text {
//                                text: "OpenGL"
//                                font.pixelSize: 22
//                                anchors.verticalCenter: parent.verticalCenter
//                                color: "black"
//                            }
//                        }

//                        Rectangle {
//                            height: 45
//                            width: 55
//                            border.color: "#BEBEBE"
//                            //color: "blue"
//                            TextField {
//                                id: sub5Field
//                                anchors.fill:parent
//                                font.pixelSize: 22
//                            }
//                        }
//                        Rectangle {
//                            id: customCheckBox5
//                            width: 45
//                            height: 45
//                            color:sub5Field.text>= 3 ?"green": "red"
//                            radius: 45

//                            Text {
//                                anchors.centerIn: parent
//                                text: sub5Field.text>= 3 ? "✓" : "X"
//                                color: "white"
//                                font.pixelSize: 30
//                            }
//                        }
//                    }
//                }
          }

        }
        //---------------------------------------------------------
        //Create button update, button search,table
        Rectangle {
            id:rect3
            width:rect1.width
            height:rect1.height - rect2.height
            anchors.top: rect2.bottom
            //color: "yellow"
            opacity: 0.5

            //----------------------------------------------------
            //Create button update
           Rectangle {
                id:rect4
                height: 60
                width: 160
                anchors.top: parent.top
                anchors.horizontalCenter:parent.horizontalCenter

                color: "green"
                radius: 20

                MouseArea {
                    anchors.fill: parent
                    onClicked: {

                        //var id = listView1.currentIndex.toString();
                         var id = idField.text.toString();
                        //var name = nameField.text.toString();
                        //var id = currentSelectedItem.id.toString();

                        //var name = nameField.text;
                        //var sub1 = parseInt(sub1Field.text);
                        //var sub2 = parseInt(sub2Field.text);
//                        var sub3 = parseInt(sub3Field.text);
//                        var sub4 = parseInt(sub4Field.text);
//                        var sub5 = parseInt(sub5Field.text);
                        function validString(name) {
                            // Kiểm tra xem tên có chỉ chứa các ký tự chữ cái không
                            return /^[a-zisValidStringA-Z]+$/.test(name);
                        }
                        var name = validString(nameField.text) ? nameField.text.toString() : NaN;
                        var isValidName1 = !isNaN(name)
                         console.log("name:",isValidName1);


                        //Check if the string is a number from 0 to 9
                        function isValidInteger(str) {

                            return /^\d+$/.test(str);
                        }
                        //var name = isValidInteger(nameField.text)? NaN : nameField.text.toString();
                        var sub1 = isValidInteger(sub1Field.text) ? parseInt(sub1Field.text,10) : NaN;
                        var sub2 = isValidInteger(sub2Field.text) ? parseInt(sub2Field.text,10) : NaN;
                        var sub3 = isValidInteger(sub3Field.text) ? parseInt(sub3Field.text,10) : NaN;
                        var sub4 = isValidInteger(sub4Field.text) ? parseInt(sub4Field.text,10) : NaN;
                        var sub5 = isValidInteger(sub5Field.text) ? parseInt(sub5Field.text,10) : NaN;
                      console.log(id);
                      console.log(name);


                        var isValid = (!isNaN(sub1) && !isNaN(sub2) && !isNaN(sub3) && !isNaN(sub4) && !isNaN(sub5));
                        if (isValid && sub1>=0 && sub1 <= 2147483647 && sub2>=0 && sub2 <= 2147483647 && sub3>=0 && sub3 <= 2147483647 && sub4>=0 && sub4 <= 2147483647 && sub5>=0 && sub5 <= 2147483647 ) {
                            employeeModel.updateEmployeeData(id, name, sub1, sub2, sub3, sub4, sub5);
                            employeeModel.writeFile("D:/Learn -QT-QML/project5/file.txt");
                            console.log(isValid);

                            } else {
                                console.log("sub is not a valid number!");
                               console.log(isValid);

                            }


                    }
                }

                Text {
                    id: textUpdate
                    text:"UPDATE"
                    anchors.centerIn: rect4
                    font.pixelSize: 27
                    color: "#fff"
                    font.bold:true



                }
            }

            //-------------------------------------------------

            //create button search

            Update {
//                id:addRow
//                spacing: 6
//                anchors.top:rect4.bottom
//                anchors.topMargin: 10


//                Rectangle { color: "white"; width: 130; height: 40

//                    Text {
//                        id: search
//                        text:"Search Name:"
//                        height: 20
//                        font.pixelSize: 20
//                        anchors.fill: parent


//                        color:"black"
//                        anchors.leftMargin: 7
//                        anchors.verticalCenter: parent.verticalCenter

//                    }
//                }

//                Rectangle { color: "white"; width:rect3.width-190; height: 40;
//                    //anchors.leftMargin: 40

//                    TextField {
//                        placeholderText: qsTr("Please enter name !")
//                        anchors.fill: parent
//                        font.pixelSize: 20

//                        onTextChanged: {
//                            filterProxyModelView.setSortString(text)

//                        }
//                    }
//                }
            }


            //Create Table

            //-------------------------------


            Item {

                anchors.top: addRow.bottom
                anchors.topMargin: 10
                anchors.left: rect3.left
                anchors.right: rect3.right

                height:rect3.height

                RowLayout {
                    spacing: 10

                    width: parent.width


                        Layout.fillWidth: true
                    Text {
                        Layout.leftMargin: 70
                        text: "NAME"
                        font.bold: true
                        font.pixelSize: 22

                    }


                    Rectangle{
                        Layout.fillWidth: true

                        Text {
                            text: "AVERAGE"
                            font.bold: true

                            //Layout.Right:70
                            anchors.right: parent.right
                            anchors.rightMargin: 70
                            //Layout.leftMargin: rect3.height/2-20
                            font.pixelSize: 22

                        }
                    }

                }

//                model: DelegateModel {
//                       id: myDelegateModel
//                       model: myAbstractItemModel
//                       delegate: {
//                           // Define delegates here
//                       }


                ListView {
                    property var currentSelectedItem
                    id:listView1
                    anchors.fill: parent
                    //anchors.margins: 50
                    anchors.leftMargin: 50
                    anchors.rightMargin: 50
                    anchors.topMargin: 40

                    clip: true

                    //model: employeeModel

                    //display item detail before click line:
                    onCurrentItemChanged :{
                        // Update the currently-selected item
                        currentSelectedItem = myDelegateModel.items.get(currentIndex).model;
                        sub1Field.text = currentSelectedItem.sub1
                        sub2Field.text = currentSelectedItem.sub2
                        sub3Field.text = currentSelectedItem.sub3
                        sub4Field.text = currentSelectedItem.sub4
                        sub5Field.text = currentSelectedItem.sub5
                        nameField.text = currentSelectedItem.name
                        idField.text   = currentSelectedItem.id
                        console.log("id currentSelected: ",currentSelectedItem.id);

                    }

                    model: DelegateModel {
                        id: myDelegateModel
                        model: filterProxyModelView
                        delegate: numberDelegate2

                    }

                    spacing: 2

                }

                Component {
                    id: numberDelegate2

                    Item {
                        id:wraper
                        height:50
                        width: ListView.view.width


                       Rect1 {
//                            anchors.left:parent.left
//                            anchors.right: parent.right
//                            //anchors.bottom: parent.bottom
//                            anchors.fill: parent
//                            color: wraper.ListView.isCurrentItem ? "#0099FF" : "white"
//                            //opacity: 0.7

//                            height: 50
//                            //width:rect3.width

//                            MouseArea {
//                                anchors.fill: parent
//                                onClicked: {
//                                    //var a ;
//                                    listView1.currentIndex = index;
//                                    //console.log(listView1.currentIndex)
//                                    sub1Field.text = model.sub1
//                                    sub2Field.text = model.sub2
//                                    sub3Field.text = model.sub3
//                                    sub4Field.text = model.sub4
//                                    sub5Field.text = model.sub5
//                                    nameField.text = model.name
//                                    idField.text = model.id

//                                }

//                            }

//                            Text {
//                                id:textName
//                                Layout.leftMargin: 20

//                                text: model.name
//                                //horizontalAlignment: Text.AlignLeft
//                                anchors.left: parent.left
//                                anchors.leftMargin: 30
//                                anchors.verticalCenter: parent.verticalCenter
//                                font.pixelSize: 22
//                            }

//                            Text {
//                                id:textAverage
//                                anchors.right: parent.right
//                                anchors.rightMargin: 30
//                                anchors.verticalCenter: parent.verticalCenter
//                                font.pixelSize: 22
//                                text: model.average.toFixed(1)
//


                        }

                    }
                }

            }



        }
    }

}

