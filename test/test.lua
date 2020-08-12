local QtCore = require 'qtcore'
local QtGui = require 'qtgui'
local QtWidgets = require 'qtwidgets'

local app = QtWidgets.QApplication.new(1, {})

local btn = QtWidgets.QPushButton.new("Hello World!")

btn:connect('pressed()', function(self)
    print("I'm about to close...")
    self:close()
end)

btn:setWindowTitle("A great example!")
btn:resize(300,50)
btn:show()

app.exec()
