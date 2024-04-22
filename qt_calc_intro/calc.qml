import QtQuick.Controls
import QtQuick

ApplicationWindow {
    width: 640; height: 400

    visible: true
    title: 'My Qt Calculator'

    function operate_on_event(event) {
        console.log(event.text)
        console.log(event.key)
        // pre-construct Sets
        const numbers = new Set(["1", "2", "3", "4", "5", "6", "7", "8", "9", "0", ".", '(', ')']);
        const operations = new Set(["/", "*", "-", "+"])
        const evaluate_signs = new Set([Qt.Key_Equal, Qt.Key_Enter, Qt.Key_Return])
        const input_val = event.text === ',' ? '.' : event.text
        if (numbers.has(input_val)) {
            // simple digit values with corrected coma/period
            main_field.text = main_field.text === '0' ? main_field.text = input_val : main_field.text = main_field.text + input_val
        } else if (event.key === Qt.Key_Escape) {
            // escape should clear input to zero
            main_field.text = '0'
        } else if (event.key === Qt.Key_Backspace) {
            // backspace deletes last value, but with only one value left, set to zero
            main_field.text = main_field.text.length > 1 ? main_field.text.slice(0, -1) : 0
        } else if (operations.has(input_val)) {
            // add a operation sign, if given
            main_field.text = main_field.text + input_val
        } else if (evaluate_signs.has(event.key)) {
            // with an equal sign given, calculate the input and store to history
            // This kinda bad, but here is controlled input, so kinda okay
            history_field.text += main_field.text + '='
            main_field.text = eval(main_field.text)
            history_field.text += main_field.text + '\n'
            history_field.cursorPosition = history_field.length - 1
        }
    }

    Column {
        anchors.centerIn: parent
        spacing: 10
        ScrollView {
            width: parent.width
            height: 5 * (history_field.font.pixelSize * 1.35)
            ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
            ScrollBar.vertical.policy: ScrollBar.AsNeeded
            TextArea {
                id: history_field
                font.pixelSize: 20
                font.bold: false
            }

        }

        Text {
            focus: true
            id: main_field
            text: '0'
            font.pointSize: 22
            font.bold: true
            color: 'white'
            Keys.onPressed: (event) => {
                operate_on_event(event)
            }

        }
        Row {
            spacing: 10
            Grid {
                spacing: 10
                rows: 4
                columns: 3
                OperationButton {
                    id: button1
                    text: '1'
                    key: Qt.Key_1
                }
                OperationButton {
                    id: button2
                    text: '2'
                    key: Qt.Key_2
                }
                OperationButton {
                    id: button3
                    text: '3'
                    key: Qt.Key_3
                }
                OperationButton {
                    id: button4
                    text: '4'
                    key: Qt.Key_4
                }
                OperationButton {
                    id: button5
                    text: '5'
                    key: Qt.Key_5
                }
                OperationButton {
                    id: button6
                    text: '6'
                    key: Qt.Key_6
                }
                OperationButton {
                    id: button7
                    text: '7'
                    key: Qt.Key_7
                }
                OperationButton {
                    id: button8
                    text: '8'
                    key: Qt.Key_8
                }
                OperationButton {
                    id: button9
                    text: '9'
                    key: Qt.Key_9
                }
                OperationButton {
                    id: button0
                    text: '0'
                    key: Qt.Key_0
                }
                OperationButton {
                    id: button_decimal
                    text: '.'
                    label: ','
                    key: Qt.Key_Period
                    color: 'red'
                }
                OperationButton {
                    id: button_equal
                    text: '='
                    key: Qt.Key_Enter
                    color: 'red'
                }
            }
            Column {
                spacing: 10
                OperationButton {
                    id: button_plus
                    text: '+'
                    label: '+'
                    key: Qt.Key_Plus
                    color: "red"
                }
                OperationButton {
                    id: button_minus
                    text: '-'
                    label: '-'
                    key: Qt.Key_Minus
                    color: "red"
                }
                OperationButton {
                    id: button_multiply
                    text: '*'
                    label: 'X'
                    key: Qt.Key_Asterisk
                    color: "red"
                }
                OperationButton {
                    id: button_divide
                    text: '/'
                    label: '÷'
                    key: Qt.Key_Slash
                    color: "red"
                }
            }
            Column{
                spacing: 10
                OperationButton {
                    id: button_bracket_open
                    text: '('
                    key: Qt.Key_BracetLeft
                    color: "red"
                }
                OperationButton {
                    id: button_bracket_close
                    text: ')'
                    key: Qt.Key_BraceRight
                    color: "red"
                }
                OperationButton {
                    id: button_clear
                    text: 'AC'
                    key: Qt.Key_Escape
                    color: "red"
                }
            }
        }
    }
}