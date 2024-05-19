
import QtQuick 2.0
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.4
import QtQml.Models 2.11


Rectangle {
    id:rect2
    width:rect1.width
    height:rect1.height/2
    //anchors.fill:rect1
    anchors.top:rect1.top
    //color: "green"
    opacity: 0.5

    //Display Detail Employee:
            Rectangle {
                id: detailedInfoContainer
                width: parent.width
                height: parent.height-20
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.topMargin: 20
                color: "lightblue"
                border.color: "blue"
                Column {
                    //anchors.centerIn: parent
                    anchors.right: parent.right
                    anchors.left: parent.left
                    anchors.leftMargin: 50
                    anchors.rightMargin: 50
                    spacing: 15

                    Row {
                        //spacing: 10
                        anchors.topMargin: 100
                        anchors.right: parent.right
                        anchors.left: parent.left

                        Text {
                            text: "id:"
                            font.pixelSize: 16
                            color: "black"
                            visible: false
                        }
                        TextField {
                            id: idField
                            width: parent.width
                            visible: false
                        }
                    }

                    Row {
                        spacing: 10
                        anchors.topMargin: 100
                        anchors.right: parent.right
                        anchors.left: parent.left
                        Rectangle {
                             height: 30
                             width: 30
                            // anchors.left:parent.left
                            // anchors.right: parent.right
                             color: "yellow"
                             visible: false

                             Text {
                                 text: "name:"
                                 font.pixelSize: 16
                                 color: "black"
                                 visible: false
                             }
                         }
                         Rectangle {
                             height: 30
                             width: parent.width
                             color: "pink"
                             TextField {
                                 id: nameField
                                 width: parent.width
                                 font.pixelSize: 24
                                 font.bold: true
                             }
                         }

                    }

                    Row {

                        spacing: 10
                        //width: detailedInfoContainer.width
                        Rectangle {
                            id:image1
                            height: 45
                            width: 45

                            Image {
                                anchors.fill: parent
                                source: "src/img1.png"
                            }
                        }

                        Rectangle {
                            height: 45
                            width: rect2.width -265
                            color: "yellow"
                            Text {
                                text: "Assembly"
                                font.pixelSize: 22
                                anchors.verticalCenter: parent.verticalCenter
                                color: "black"
                            }
                        }
                        Rectangle {
                            height: 45
                            width: 55
                            border.color: "#BEBEBE"
                            //color: "blue"
                            TextField {
                                id: sub1Field
                                anchors.fill:parent
                                font.pixelSize: 22
                                //width: parent.width
                            }
                        }

                        Rectangle {
                            id: customCheckBox1
                            width: 45
                            height: 45
                            color:sub1Field.text>= 3 ?"green": "red"
                            radius: 45

                            Text {
                                anchors.centerIn: parent
                                text: sub1Field.text>= 3 ? "✓" : "X"
                                color: "white"
                                font.pixelSize: 30
                            }
                        }
                    }
                    Row {

                        spacing: 10
                        Rectangle {
                            id:image2
                            height: 45
                            width: 45

                            Image {
                                anchors.fill: parent
                                source: "src/img2.png"
                            }
                        }
                        Rectangle {
                            height: 45
                            width: rect2.width -265
                            color: "yellow"
                            Text {
                                text: "C++"
                                font.pixelSize: 22
                                anchors.verticalCenter: parent.verticalCenter
                                color: "black"
                            }
                        }
                        Rectangle {
                            height: 45
                            width: 55
                            border.color: "#BEBEBE"
                            //color: "blue"
                            TextField {
                                id: sub2Field
                                anchors.fill:parent
                                font.pixelSize: 22
                            }
                        }
                        Rectangle {
                            id: customCheckBox2
                            width: 45
                            height: 45
                            color:sub2Field.text>= 3 ?"green": "red"
                            radius: 45

                            Text {
                                anchors.centerIn: parent
                                text: sub2Field.text>= 3 ? "✓" : "X"
                                color: "white"
                                font.pixelSize: 30
                            }
                        }
                    }
                    Row {
                        spacing: 10
                        Rectangle {
                            id:image3
                            height: 45
                            width: 45

                            Image {
                                anchors.fill: parent
                                source: "src/img3.png"
                            }
                        }

                        Rectangle {
                            height: 45
                            width: rect2.width -265
                            color: "yellow"
                            Text {
                                text: "Java Script"
                                font.pixelSize: 22
                                anchors.verticalCenter: parent.verticalCenter
                                color: "black"
                            }
                        }
                        Rectangle {
                            height: 45
                            width: 55
                            border.color: "#BEBEBE"
                            //color: "blue"
                            TextField {
                                id: sub3Field
                                anchors.fill:parent
                                font.pixelSize: 22
                            }
                        }
                        Rectangle {
                            id: customCheckBox3
                            width: 45
                            height: 45
                            color:sub3Field.text>= 3 ?"green": "red"
                            radius: 45

                            Text {
                                anchors.centerIn: parent
                                text: sub3Field.text>= 3 ? "✓" : "X"
                                color: "white"
                                font.pixelSize: 30
                            }
                        }

                    }
                    Row {
                        spacing: 10
                        Rectangle {
                            id:image4
                            height: 45
                            width: 45

                            Image {
                                anchors.fill: parent
                                source: "src/img4.png"
                            }
                        }
                        Rectangle {
                            height: 45
                            width: rect2.width -265
                            color: "yellow"
                            Text {
                                text: "QML"
                                font.pixelSize: 22
                                anchors.verticalCenter: parent.verticalCenter
                                color: "black"
                            }
                        }

                        Rectangle {
                            height: 45
                            width: 55
                            border.color: "#BEBEBE"
                            //color: "blue"
                            TextField {
                                id: sub4Field
                                anchors.fill:parent
                                font.pixelSize: 22
                            }
                        }
                        Rectangle {
                            id: customCheckBox4
                            width: 45
                            height: 45
                            color:sub4Field.text>= 3 ?"green": "red"
                            radius: 45

                            Text {
                                anchors.centerIn: parent
                                text: sub4Field.text>= 3 ? "✓" : "X"
                                color: "white"
                                font.pixelSize: 30
                            }
                        }
                    }

                    Row {
                        spacing: 10
                        Rectangle {
                            id:image5
                            height: 45
                            width: 45

                            Image {
                                anchors.fill: parent
                                source: "src/img5.png"
                            }
                        }
                        Rectangle {
                            height: 45
                            width: rect2.width -265
                            color: "yellow"
                            Text {
                                text: "OpenGL"
                                font.pixelSize: 22
                                anchors.verticalCenter: parent.verticalCenter
                                color: "black"
                            }
                        }

                        Rectangle {
                            height: 45
                            width: 55
                            border.color: "#BEBEBE"
                            //color: "blue"
                            TextField {
                                id: sub5Field
                                anchors.fill:parent
                                font.pixelSize: 22
                            }
                        }
                        Rectangle {
                            id: customCheckBox5
                            width: 45
                            height: 45
                            color:sub5Field.text>= 3 ?"green": "red"
                            radius: 45

                            Text {
                                anchors.centerIn: parent
                                text: sub5Field.text>= 3 ? "✓" : "X"
                                color: "white"
                                font.pixelSize: 30
                            }
                        }
                    }
                }
            }

}
