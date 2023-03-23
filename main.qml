import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import Qt5Compat.GraphicalEffects

Window {
    width: 400
    height: 852
    visible: true
    title: qsTr("Whatsapp New Component")


    Rectangle {
           id: header
           color: "#017F63"
           anchors.left: parent.left
           anchors.right: parent.right
           height: 96

           Text {
                       text: "WhatsApp"
                       font.family: "Roboto"
                       font.pixelSize: 19
                       font.weight: Font.DemiBold
                       color: "#fff"
                       anchors.top: parent.top
                       anchors.topMargin: 12
                       anchors.left: parent.left
                       anchors.leftMargin: 15
                   }


           Image {
               id: threedots
               source: "file:/Users/samis/Documents/Facul/Past/Apps multimidia/Início do fim/Whatsapp/images/menu.png"
               anchors.top: header.top;
               anchors.right: header.right;
               anchors.margins: 11;
               height: 22;
               width: height;
           }

           Image {
               id: lupa
               source: "file:/Users/samis/Documents/Facul/Past/Apps multimidia/Início do fim/Whatsapp/images/procurar.svg"
               anchors.top: header.top;
               anchors.right: threedots.left;
               anchors.margins: 12;
               anchors.rightMargin: 20;
               height: 16.5;
               width: height;
           }

           Image {
               id: camera
               source: "file:/Users/samis/Documents/Facul/Past/Apps multimidia/Início do fim/Whatsapp/images/camera.svg"
               height: 18;
               width: height;
               anchors.left: header.left;
               anchors.bottom: header.bottom;
               anchors.leftMargin: 7;
               anchors.bottomMargin: 15;

           }


               TabBar {
               id: tabBar
               height: 40
               anchors.left: camera.right
               anchors.right: parent.right
               anchors.bottom: header.bottom
               anchors.leftMargin: 5;

               background: Rectangle {
                   color: "transparent"
               }


               TabButton {
                   id: tab
                   text: " CONVERSAS"
                   anchors.bottom: parent.bottom
                   anchors.margins: 3;

                   contentItem: Text {
                       text: tab.text
                       font.family: "Roboto"
                       font.pixelSize: 14
                       font.weight: Font.Bold
                       horizontalAlignment: Text.AlignHCenter
                       anchors.margins: 15;
                       padding: 10;
                       color: tab.checked ? "#fff" : "#A5BAB7"
                   }

                   background: Rectangle {
                       color: "#fff"
                       width: parent.width
                       height: 3
                       visible: tab.checked
                       anchors.top: tab.bottom
                   }
               }

               TabButton {
                   id: tab2
                   text: "STATUS"
                   anchors.bottom: parent.bottom
                   anchors.margins: 3;

                   contentItem: Text {
                       text: tab2.text
                       font.family: "Roboto"
                       font.pixelSize: 14
                       font.weight: Font.Bold
                       horizontalAlignment: Text.AlignHCenter
                       anchors.margins: 15;
                       padding: 10;
                       color: tab2.checked ? "#fff" : "#A5BAB7"
                   }

                   background: Rectangle {
                       color: "#fff"
                       width: parent.width
                       height: 3
                       visible: tab2.checked
                       anchors.top: parent.bottom
                   }
               }

               TabButton {
                   id: tab3
                   text: "CHAMADAS"
                   anchors.bottom: parent.bottom
                   anchors.margins: 3;

                   contentItem: Text {
                       text: tab3.text
                       font.family: "Roboto"
                       font.pixelSize: 14
                       font.weight: Font.Bold
                       horizontalAlignment: Text.AlignHCenter
                       anchors.margins: 15;
                       padding: 10;
                       color: tab3.checked ? "#fff" : "#A5BAB7"
                   }

                   background: Rectangle {
                       color: "#fff"
                       width: parent.width
                       height: 3
                       visible: tab3.checked
                       anchors.top: parent.bottom
                   }
               }


               }
           }

    Conversa{

        foto: "file:/Users/samis/Documents/Facul/Past/Whatsapp Clone/Whatsapp2/Contato1.png";
        titulo: "possible cels";
        conversa: "Você: 📷 Foto";
        hora: "11:55";
        lida: true;
        fixada:true;

    }


    Rectangle{
        id: newchatbtn ;
        radius: width/2 ;
        width: 54;
        height: width;
        color: "#04A785"
        anchors.bottom: parent.bottom;
        anchors.right: parent.right;
        anchors.rightMargin: 15;
        anchors.bottomMargin: 23;

        Image {
            id: newchaticon
            source: "file:/Users/samis/Documents/Facul/Past/Whatsapp Clone/Whatsapp2/chat.png"
            height: 20; width: 25;
            anchors.centerIn: parent;

        }
    }


}


