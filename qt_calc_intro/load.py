from PyQt6.QtQml import QQmlApplicationEngine
from PyQt6.QtGui import QGuiApplication
import sys


app = QGuiApplication(sys.argv)

engine = QQmlApplicationEngine()

engine.load('calc.qml')

sys.exit(app.exec())
