import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Window

Window {
    id: mainWindow
    width: Screen.width
    height: Screen.height
    visibility: Window.Maximized
    visible: true
    title: qsTr("Ebbinghaus Curve")

    Rectangle {
        id: gradientRect
        width: parent.width
        height: parent.height
        anchors.fill: parent
        color: "transparent"
        border.color: "black"
        border.width: 1
        radius: 0

        gradient: Gradient {
            GradientStop { position: 0.0; color: "#282929" }
            GradientStop { position: 0.25; color: "#373837" }
            GradientStop { position: 0.75; color: "#5b5e59" }
            GradientStop { position: 1.0; color: "#5e625d" }
        }

        Grid {
            id: topGrid
            width: parent.width
            height: parent.height
            visible: true
            anchors.fill: parent

            //TODO:  Change text color to white slim
            Row {
                id: topRow
                width: parent.width
                height: parent.height * 13 / 100
                spacing: 0

                Rectangle {
                    id: topRect
                    width: parent.width
                    height: parent.height
                    color: "transparent"
                    opacity: 1

                    Rectangle{
                        id: dayBeforeyesterdayRect
                        height: parent.height
                        width: parent.width * 19.6 / 100
                        color: "transparent"

                        //TODO: Return Date auto updating on backend C++ side
                        Rectangle {
                            id: date1
                            width: date1.height
                            height: parent.height / 1.5
                            anchors.centerIn: parent
                            color: "#333333"
                            border.width: 1
                            border.color: "#607080"
                            radius: 100
                            Text {
                                text: "4"
                                font.pointSize: 50
                                font.family: "Merlo-Regular ☞"
                                anchors.centerIn: parent
                            }
                            MouseArea {
                                anchors.fill: parent
                                onClicked: {
                                    date1.color = "#FFF"
                                }
                            }
                        }

                    }

                    Rectangle {
                        id: yesterdayRect
                        height: parent.height
                        width: parent.width * 16.6 / 100
                        color: "transparent"
                        x: dayBeforeyesterdayRect.width

                        Rectangle {
                            id: date2
                            width: date2.height
                            height: parent.height / 1.5
                            anchors.centerIn: parent
                            color: "#333333"
                            border.width: 1
                            border.color: "#607080"
                            radius: 100
                            Text {
                                text: "5"
                                font.pointSize: 50
                                font.family: "Merlo-Regular ☞"
                                anchors.centerIn: parent
                            }
                            MouseArea {
                                anchors.fill: parent
                                onClicked: {
                                    /* Handle mouse click event here */
                                }
                            }
                        }
                    }

                    Rectangle{
                        id: todayRect
                        height: parent.height
                        width: parent.width * 16.6 / 100
                        color: "transparent"
                        x: yesterdayRect.x + yesterdayRect.width

                        Rectangle {
                            id: date3
                            width: date3.height
                            height: parent.height / 1.5
                            anchors.centerIn: parent
                            color: "#333333"
                            border.width: 1
                            border.color: "#607080"
                            radius: 100
                            Text {
                                text: "6"
                                font.pointSize: 50
                                font.family: "Merlo-Regular ☞"
                                anchors.centerIn: parent
                            }
                            MouseArea {
                                anchors.fill: parent
                                onClicked: {
                                    /* Handle mouse click event here */
                                }
                            }
                        }
                    }

                    Rectangle{
                        id: tomorrowRect
                        height: parent.height
                        width: parent.width * 12 / 100
                        color: "transparent"
                        x: todayRect.x + todayRect.width

                        Rectangle {
                            id: date4
                            width: date4.height
                            height: parent.height / 1.5
                            anchors.centerIn: parent
                            color: "#333333"
                            border.width: 1
                            border.color: "#607080"
                            radius: 100
                            Text {
                                text: "7"
                                font.pointSize: 50
                                font.family: "Merlo-Regular ☞"
                                anchors.centerIn: parent
                            }
                            MouseArea {
                                anchors.fill: parent
                                onClicked: {
                                    /* Handle mouse click event here */
                                }
                            }
                        }
                    }

                    Rectangle{
                        id: dayAftertomorrowRect
                        height: parent.height
                        width: parent.width * 17.6 / 100
                        color: "transparent"
                        x: tomorrowRect.x + tomorrowRect.width

                        Rectangle {
                            id: date5
                            width: date5.height
                            height: parent.height / 1.5
                            anchors.centerIn: parent
                            color: "#333333"
                            border.width: 1
                            border.color: "#607080"
                            radius: 100
                            Text {
                                text: "8"
                                font.pointSize: 50
                                font.family: "Merlo-Regular ☞"
                                anchors.centerIn: parent
                            }
                            MouseArea {
                                anchors.fill: parent
                                onClicked: {
                                    /* Handle mouse click event here */
                                }
                            }
                        }
                    }

                    Rectangle{
                        id: afterTheDayAftertomorrowRect
                        height: parent.height
                        width: parent.width * 17.6 / 100
                        color: "transparent"
                        x: dayAftertomorrowRect.x + dayAftertomorrowRect.width

                        Rectangle {
                            id: date6
                            width: date6.height
                            height: parent.height / 1.5
                            anchors.centerIn: parent
                            color: "#333333"
                            border.width: 1
                            border.color: "#607080"
                            radius: 100
                            Text {
                                text: "9"
                                font.pointSize: 50
                                font.family: "Merlo-Regular ☞"
                                anchors.centerIn: parent
                            }
                            MouseArea {
                                anchors.fill: parent
                                onClicked: {
                                    /* Handle mouse click event here */
                                }
                            }
                        }
                    }
                }
            }
        }

        Grid {
            id: sideGrid
            width: dayBeforeyesterdayRect.width + yesterdayRect.width
            height: parent.height - topRect.height
            visible: true
            y: topRect.height

            Rectangle {
                id: sideRect
                width: parent.width
                height: parent.height
                color: "transparent"
                opacity: 1

                Rectangle {
                    id: leftMarginSectionTopRect
                    height: parent.height
                    width: parent.width * 0.02
                    color: "transparent"
                    opacity: 1
                    visible: false
                }

                Rectangle{
                    id: topSideRect
                    height: parent.height * 0.3
                    width: parent.width
                    color: "transparent"
                    opacity: 1

                    Rectangle {
                        id: mainSectionTopRect
                        height: parent.height
                        width: parent.width
                        color: "transparent"
                        opacity: 1

                        Rectangle {
                            id: whiteDelimeterTopRect
                            x: parent.width / 1.75
                            y: 10
                            width: 2
                            height: parent.height - 15
                            color: "white"
                            opacity: 0.2
                            z: 3
                        }

                        Rectangle {
                            id: upperSectionTopRect
                            height: parent.height * 0.17
                            width: parent.width * 0.98
                            color: "#282929"
                            border.color: "#282929"
                            border.width: 50
                            radius: 10
                            opacity: 1
                            x: leftMarginSectionTopRect.width
                            y: 10
                            z: 1
                        }

                        Rectangle {
                            id: middleSectionTopRect
                            height: parent.height * 0.7
                            width: parent.width * 0.98
                            color: "#3C3C3E"
                            opacity: 1
                            x: leftMarginSectionTopRect.width
                            y: upperSectionTopRect.height
                            z: 2
                        }

                        Rectangle {
                            id: bottomSectionTopRect
                            height: parent.height * 0.15
                            width: parent.width * 0.98
                            color: "#282929"
                            border.color: "#282929"
                            border.width: 50
                            radius: 10
                            opacity: 1
                            x: leftMarginSectionTopRect.width
                            y: (upperSectionTopRect.height + middleSectionTopRect.height) - 10
                            z: 1
                        }
                    }
                }

                Rectangle{
                    id: midSideRect
                    height: parent.height * 0.5
                    width: parent.width
                    y:topSideRect.height
                    color: "transparent"
                    opacity: 1

                    Rectangle {
                        id: leftMarginSectionMidRect
                        height: parent.height
                        width: parent.width * 0.02
                        color: "transparent"
                        opacity: 1
                    }

                    Rectangle {
                        id: topMarginSectionMidRect
                        height: parent.height * 0.02
                        width: parent.width - leftMarginSectionMidRect.width
                        color: "transparent"
                        opacity: 1
                        x: leftMarginSectionMidRect.width
                    }

                    Rectangle {
                        id: mainMidSideRect
                        height: parent.height - topMarginSectionMidRect.height
                        width: parent.width - leftMarginSectionMidRect.width
                        color: "transparent"
                        opacity: 1
                        x: leftMarginSectionMidRect.width
                        y: topMarginSectionMidRect.height
                        border.color: "#282929"
                        border.width: 50
                        radius: 10

                        Rectangle {
                        id: upperMidSideRectWrapper
                        height: parent.height * 0.12
                        width: parent.width * 0.92
                        color: "#282929"
                        opacity: 1
                        x:10
                        y: 0

                            Rectangle {
                                id: upperMidSideRect
                                color: "#282929"
                                opacity: 1
                                anchors.centerIn: parent

                                Text {
                                    color: "White"
                                    font.pixelSize: 30
                                    font.bold: true
                                    font.family: "Merlo-Regular"
                                    text: "Lorem"
                                    anchors.centerIn: parent
                                }
                            }
                        }

                        Rectangle {
                        id: bottomMidSideRect
                        height: parent.height * 0.88
                        width: parent.width * 0.97
                        color: "#282929"
                        opacity: 1
                        x: 10
                        y: upperMidSideRectWrapper.height
                        border.color: "#282929"
                        border.width: 50
                        radius: 10

                            Text {
                                width: parent.width
                                height: parent.height
                                color: "white"
                                font.pixelSize: 20
                                font.family: "Merlo-Regular"
                                clip: true
                                text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit lectus vel magna malesuada, et elementum dolor euismod. Integer id velit vestibulum, tempus justo eget, malesuada lorem. Donec feugiat tortor eget ultrices congue. Phasellus mollis massa et elit tincidunt lobortis. Curabitur quis sagittis ipsum. Donec eleifend, ante in lobortis rutrum, eros velit ullamcorper massa, at rutrum tortor enim eget dui. Donec sed libero vel orci pretium pharetra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit lectus vel magna malesuada, et elementum dolor euismod. Integer id velit vestibulum, tempus justo eget, malesuada lorem. Donec feugiat tortor eget ultrices congue. Phasellus mollis massa et elit tincidunt lobortis. Curabitur quis sagittis ipsum. Donec eleifend, ante in Curabitur quis sagittis ipsum. Donec eleifend, ante in Curabitur quis sagittis ipsum. Donec eleifend, ante in Curabitur"
                                wrapMode: Text.WrapAnywhere
                                anchors.centerIn: parent
                            }
                        }
                    }
                }

                Rectangle {
                    id: botSideRect
                    height: parent.height * 0.2
                    width: parent.width
                    y: topSideRect.height + midSideRect.height
                    color: "transparent"
                    opacity: 1

                    Rectangle {
                        id: upperSectionBotSideRect
                        height: parent.height * 0.2
                        width: parent.width
                        color: "transparent"
                        opacity: 1

                        Text {
                            text: "MotivationTextBlock"
                            font.family: "Merlo-Regular"
                            font.bold: true
                            font.pixelSize: 20
                            color: "white"
                            anchors.centerIn: parent
                        }
                    }

                    Rectangle {
                        id: bottomSectionBotSideRect
                        height: parent.height * 0.8
                        width: parent.width
                        color: "transparent"
                        opacity: 1
                        y: upperSectionBotSideRect.height

                        Text {
                            text: "WINIIN"
                            font.family: "Merlo-Regular"
                            font.pixelSize: 50
                            font.letterSpacing: 5
                            color: "white"
                            anchors.centerIn: parent
                        }
                    }
                }
            }
        }

        Grid {
            id: imageGrid
            width: parent.width - sideGrid.width
            height: parent.height - topRect.height
            visible: true
            x: sideGrid.width
            y: topRect.height

            Rectangle {
                id: imageRect
                width: parent.width
                height: parent.height
                color: "transparent"
                opacity: 1

                Image {
                    id: image
                    width: parent.width
                    height: parent.height
                    source: "qrc:/Assets/flower.png"
                    fillMode: Image.PreserveAspectFit
                    opacity: 1
                }
            }
        }
    }
}
