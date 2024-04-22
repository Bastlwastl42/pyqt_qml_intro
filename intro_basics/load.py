from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtCore import QObject, pyqtSlot
from PyQt5.QtWidgets import QApplication
import sys


class Windows(QObject):
    def __init__(self):
        super().__init__()
    @pyqtSlot()
    def hello(self):
        print("hello World")


app = QApplication(sys.argv)

engine = QQmlApplicationEngine()

window = Windows()

engine.rootContext().setContextProperty('window', window)

engine.load('switch.qml')

sys.exit(app.exec())
