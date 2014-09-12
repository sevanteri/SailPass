import QtQuick 2.0
import Sailfish.Silica 1.0

import Qt.labs.folderlistmodel 2.0

Page {
    id: page

    property alias path: fileModel.folder

    SilicaListView {
        id: passlist
        anchors.fill: parent

        VerticalScrollDecorator {}
        header: PageHeader {title: "Passwords" }

        spacing: Theme.paddingMedium

        model: fileModel
        delegate: BackgroundItem {

            Label {
                text: fileIsDir ? fileName + "/" : fileName.slice(0,-4)
                font.pixelSize: Theme.fontSizeLarge
                font.family: Theme.fontFamilyHeading

                x: Theme.paddingLarge
            }
            onClicked: {
                if (fileIsDir) {
                    pageStack.push(Qt.resolvedUrl("PassList.qml"), {path: path + "/" + fileName});
                } else {
//                    var pass = launcher.showPassword(filePath);
                }
            }
        }

        FolderListModel {
            id: fileModel
            nameFilters: ["*.gpg"]
        }
    }
}


