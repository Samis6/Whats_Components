import QtQuick 2.15

    Rectangle{
                id:chat1
                width: parent.width;
                height: 74;
                anchors.top: header.bottom;
                property var foto;
                property var titulo;
                property var conversa;
                property var fixada;
                property var hora;
                property var lida;



                    Rectangle {
                        id: fotocontato1
                        anchors.verticalCenter: parent.verticalCenter;
                        anchors.left: parent.left
                        anchors.margins: 17;
                        width: 45;
                        height: 45;
                        radius: width / 2
                        clip: true

                        Image {
                            width: parent.width;
                            height: parent.height;
                            source: foto;
                        }



                    }

                        Text {
                            id: nomedochat1
                            text: titulo;
                            font.weight: Font.DemiBold
                            font.pointSize: 13
                            anchors.top: chat1.top;
                            anchors.left: fotocontato1.right;
                            anchors.margins: 14.2;
                            color: "black";
                        }
                        Image {
                            id: read
                            source: "file:/Users/samis/Documents/Facul/Past/Whatsapp Clone/Whatsapp2/read.png"
                            height: 15;
                            width: 13;
                            anchors.left: nomedochat1.left;
                            anchors.top: nomedochat1.bottom;
                            anchors.margins: 5;
                            visible: lida;

                        }

                        Text {
                            id: mensagemchat1
                            text: conversa;
                            color: "#8696a0"
                            font.pointSize: 10.5
                            font.weight: Font.DemiBold
                            anchors.left: read.right;
                            anchors.top: nomedochat1.bottom;
                            anchors.leftMargin: 4;
                        }


                    Rectangle{
                        id:horamsgmutepin
                        anchors.right: parent.right;
                        anchors.top: parent.top;
                        //color: "red";
                        height: parent.height;
                        width: 60;

                        Text {
                            id: horadamsg
                            text: hora;
                            color: "#8696a0"
                            font.pointSize: 9.8
                            anchors.top: parent.top;
                            anchors.horizontalCenter: parent.horizontalCenter;
                            anchors.topMargin: 15;

                        }

                        Image {
                            id: pino
                            source: "file:/Users/samis/Documents/Facul/Past/Whatsapp Clone/Whatsapp2/office-push-pin.png"
                            height: 15;
                            width: 17;
                            anchors.right: horadamsg.right;
                            anchors.top: horadamsg.bottom;
                            anchors.topMargin: 7;
                            anchors.margins: 4;
                            visible: fixada;
                        }

                    }

                                   }


