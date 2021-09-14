import PySimpleGUI as sg
import os.path
import matplotlib.pyplot as plt
import matplotlib 
import numpy as np
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
from PIL import ImageGrab
import time

#test plot
fig = plt.figure(figsize=(18, 8), dpi=100)
fig2 = plt.figure(figsize=(18, 8), dpi=100)
t = np.arange(0, 3, .01)
subplot = fig.add_subplot(111).plot(t, 2 * np.sin(2 * np.pi * t))
###

matplotlib.use("TkAgg")

def draw_figure(canvas, figure):
    figure_canvas_agg = FigureCanvasTkAgg(figure, canvas)
    figure_canvas_agg.draw()
    figure_canvas_agg.get_tk_widget().pack(side="top", fill="both", expand=1)
    return figure_canvas_agg

def remove_plot(canvas):
    canvas.get_tk_widget().destroy()

def save_element_as_file(element, filename):
    """
    Saves any element as an image file.  Element needs to have an underlyiong Widget available (almost if not all of them do)
    :param element: The element to save
    :param filename: The filename to save to. The extension of the filename determines the format (jpg, png, gif, ?)
    """
    widget = element.Widget
    box = (widget.winfo_rootx(), widget.winfo_rooty(), widget.winfo_rootx() + widget.winfo_width(), widget.winfo_rooty() + widget.winfo_height())
    grab = ImageGrab.grab(bbox=box)
    grab.save(filename)

# Define the window layout
layout1 = [
    [sg.Text("Plot test")],
    [sg.Canvas(key="-CANVAS1-")],
    #[sg.Button("Close"),sg.Button("CW"),sg.Button("Exit")],
]
layout2 = [
    [sg.Text("Your plot has been saved",text_color='Green', font='Any 15')]
]
layout3 = [[sg.Button("keyboard"),sg.Button("Collect data"),sg.Button("Stop"),sg.Button("Remove plot"),sg.Button("CW"),sg.Button("Exit"),sg.Button("Save")]]

layout4  = [[sg.Input('File name for output', key='-IN1-')]]


# actual layout
layout = [[sg.Column(layout1, key='-COL1-')],[ sg.Column(layout2, visible=False, key='-COL2-')],[sg.Column(layout3)]
         ]#,[sg.Column(layout4)]]



# Create the form and show it without the plot
window = sg.Window(
    "",
    layout,
    #location=(0, 0),
    finalize=True,
    element_justification="center",
    font="Any 24",
)
window.Maximize()
location = window.current_location()
location = location[0]-200, location[1]+200

#adds a figure ###
test=draw_figure(window["-CANVAS1-"].TKCanvas, fig2)
###
# Add the plot to the window
######## 
    #Keyboard definitions
class keyboard():
    def __init__(self, location=(None, None), font=('Arial', 16)):
        self.font = font
        numberRow = '1234567890'
        topRow = 'QWERTYUIOP'
        midRow = 'ASDFGHJKL'
        bottomRow = 'ZXCVBNM'
        keyboard_layout = [[sg.Button(c, key=c, size=(4, 2), font=self.font) for c in numberRow] + [
            sg.Button('⌫', key='back', size=(4, 2), font=self.font),
            sg.Button('Esc', key='close', size=(4, 2), font=self.font)],
            [sg.Text(' ' * 4)] + [sg.Button(c, key=c, size=(4, 2), font=self.font) for c in
                               topRow] + [sg.Stretch()],
            [sg.Text(' ' * 11)] + [sg.Button(c, key=c, size=(4, 2), font=self.font) for c in
                                midRow] + [sg.Stretch()],
            [sg.Text(' ' * 18)] + [sg.Button(c, key=c, size=(4, 2), font=self.font) for c in
                                bottomRow] + [sg.Stretch()]]

        self.window = sg.Window('keyboard', keyboard_layout,
                                grab_anywhere=True, keep_on_top=True, alpha_channel=0,
                                no_titlebar=True, element_padding=(0, 0), location=location, finalize=True)
        self.hide()

    def _keyboardhandler(self):
        if self.event is not None:
            if self.event == 'close':
                self.hide()
            elif len(self.event) == 1:
                self.focus.update(self.focus.Get() + self.event)
            elif self.event == 'back':
                Text = self.focus.Get()
                if len(Text) > 0:
                    Text = Text[:-1]
                    self.focus.update(Text)

    def hide(self):
        self.visible = False
        self.window.Disappear()

    def show(self):
        self.visible = True
        self.window.Reappear()

    def togglevis(self):
        if self.visible:
            self.hide()
        else:
            self.show()

    def update(self, focus):
        self.event, _ = self.window.read(timeout=0)
        if focus is not None:
            self.focus = focus
        self._keyboardhandler()

    def close(self):
        self.window.close()
############

window['-COL2-'].update(visible=False)
class GUI():
    def run(self):
        while True: 
            event, values = window.read()

            if event == "CW":
                try:
                    remove_plot(test)
                    test=draw_figure(window["-CANVAS1-"].TKCanvas, fig)
                except:
                    test=draw_figure(window["-CANVAS1-"].TKCanvas, fig)
            elif event == "Remove plot":
                try:
                    remove_plot(test)
                    window['-COL2-'].update(visible=False)
                except:
                    window['-COL2-'].update(visible=True)

            elif event == "Exit" or event == sg.WIN_CLOSED:
                break
            elif event == "Save":
                name = sg.popup_get_text('Input file name for your plot',default_text="plot")
                save_element_as_file(window["-CANVAS1-"], name+'.png')
                sg.popup('Plot saved')
            elif event == "Collect data":
                Time = sg.popup_get_text('Input duration for collection in seconds',default_text="5")
                t_end = time.time() + int(Time)
                while time.time() < t_end:
                    sg.popup_animated('loading.gif')
                    time.sleep(0.1)
                sg.popup_animated(image_source=None) 
            elif event == 'keyboard':
                self.keyboard = keyboard(location)
                self.focus = None
                self.keyboard.togglevis()
        window.close()


if __name__ == '__main__':
    app = GUI()
    app.run()