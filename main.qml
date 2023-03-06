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

                        Button {
                            id: date1
                            width: date1.height
                            anchors.centerIn: parent
                            text: "4"
                            font.pointSize: 50
                            font.family: "Merlo-Regular ☞"
                            background: Rectangle {
                                color: "#333333"
                                border.width: 1
                                border.color: "#607080"
                                radius: 100
                            }
                            onClicked: {
                                /* Handle button click event here */
                            }
                        }
                    }

                    Rectangle{
                        id: yesterdayRect
                        height: parent.height
                        width: parent.width * 16.6 / 100
                        color: "transparent"
                        x: dayBeforeyesterdayRect.width


                        Button {
                            id: date2
                            width: date2.height
                            anchors.centerIn: parent
                            text: "5"
                            font.pointSize: 50
                            font.family: "Merlo-Regular ☞"
                            background: Rectangle {
                                color: "#333333"
                                border.width: 1
                                border.color: "#607080"
                                radius: 100
                            }
                            onClicked: {
                                /* Handle button click event here */
                            }
                        }
                    }

                    Rectangle{
                        id: todayRect
                        height: parent.height
                        width: parent.width * 16.6 / 100
                        color: "transparent"
                        x: yesterdayRect.x + yesterdayRect.width

                        Button {
                            id: date3
                            width: date3.height
                            anchors.centerIn: parent
                            text: "6"
                            font.pointSize: 50
                            font.family: "Merlo-Regular ☞"
                            background: Rectangle {
                                color: "#333333"
                                border.width: 1
                                border.color: "#607080"
                                radius: 100
                            }
                            onClicked: {
                                /* Handle button click event here */
                            }
                        }
                    }

                    Rectangle{
                        id: tomorrowRect
                        height: parent.height
                        width: parent.width * 12 / 100
                        color: "transparent"
                        x: todayRect.x + todayRect.width

                        Button {
                            id: date4
                            width: date4.height
                            anchors.centerIn: parent
                            text: "7"
                            font.pointSize: 50
                            font.family: "Merlo-Regular ☞"
                            background: Rectangle {
                                color: "#333333"
                                border.width: 1
                                border.color: "#607080"
                                radius: 100
                            }
                            onClicked: {
                                /* Handle button click event here */
                            }
                        }
                    }

                    Rectangle{
                        id: dayAftertomorrowRect
                        height: parent.height
                        width: parent.width * 17.6 / 100
                        color: "transparent"
                        x: tomorrowRect.x + tomorrowRect.width

                        Button {
                            id: date5
                            width: date5.height
                            anchors.centerIn: parent
                            text: "8"
                            font.pointSize: 50
                            font.family: "Merlo-Regular ☞"
                            background: Rectangle {
                                color: "#333333"
                                border.width: 1
                                border.color: "#607080"
                                radius: 100
                            }
                            onClicked: {
                                /* Handle button click event here */
                            }
                        }
                    }

                    Rectangle{
                        id: afterTheDayAftertomorrowRect
                        height: parent.height
                        width: parent.width * 17.6 / 100
                        color: "transparent"
                        x: dayAftertomorrowRect.x + dayAftertomorrowRect.width

                        Button {
                            id: date6
                            width: date6.height
                            anchors.centerIn: parent
                            text: "9"
                            font.pointSize: 50
                            font.family: "Merlo-Regular ☞"
                            background: Rectangle {
                                color: "#333333"
                                border.width: 1
                                border.color: "#607080"
                                radius: 100
                            }
                            onClicked: {
                                /* Handle button click event here */
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

                            Text {
                                color: "red"
                                text: "TOPTOPTOP"
                                anchors.centerIn: parent
                            }
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

                            Text {
                                color: "red"
                                text: "TOPTOPTOP"
                                anchors.centerIn: parent
                            }
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

                            Text {
                                color: "red"
                                text: "TOPTOPTOP"
                                anchors.centerIn: parent
                            }
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
                                    color: "red"
                                    text: "Middle+"
                                    anchors.centerIn: parent
                                }
                            }
                        }

                        Rectangle {
                        id: bottomMidSideRect
                        height: parent.height * 0.88
                        width: parent.width * 0.92
                        color: "#282929"
                        opacity: 1
                        x: 10
                        y: upperMidSideRectWrapper.height

                            Text {
                                color: "red"
                                text: "Middle+"
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
                            font.family: "Arial"
                            font.pixelSize: 24
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
                            font.family: "Arial"
                            font.pixelSize: 24
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
