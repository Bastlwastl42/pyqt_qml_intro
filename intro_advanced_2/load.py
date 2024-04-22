from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtGui import QGuiApplication
import sys


app = QGuiApplication(sys.argv)

engine = QQmlApplicationEngine()

engine.load('drawer.qml')

sys.exit(app.exec())
