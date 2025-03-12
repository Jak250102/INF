#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Kurze Beschreibung des Programms.
"""

from tkinter import *
from tkinter import messagebox  # Importiere messagebox separat

def CenterWindowToDisplay(root: Tk, width: int, height: int):
    """Centers the window to the main display/monitor"""
    screen_width = root.winfo_screenwidth()
    screen_height = root.winfo_screenheight()
    x = int((screen_width / 2) - (width / 2))
    y = int((screen_height / 2) - (height / 1.5))
    return f"{width}x{height}+{x}+{y}"

def main():
    # Hauptfunktion des Programms
    hallo = "Hallo Welt"
    test2 = "dies ist ein test"
    ergebns = hallo + test2

    # Erstelle das Hauptfenster
    root = Tk()
    root.title("Test")
    root.config(background="goldenrod3")

    # Zentriere das Fenster
    root.geometry(CenterWindowToDisplay(root, 500, 250))

    # Erstelle einen Rahmen (Frame) zur Zentrierung
    frame = Frame(root, background="goldenrod3")
    frame.grid(row=0, column=0, padx=10, pady=10)

    # Erstelle eine Überschrift für die Textboxen
    label = Label(frame, text="Bitte geben Sie Ihre Texte ein:", background="goldenrod3", foreground="black", font=("Papyrus", 12), highlightthickness=2, highlightbackground="black")
    label.grid(row=0, column=0, columnspan=2, pady=10)

    # Erstelle Beschriftungen für die Eingabefelder
    labels = ["Textfeld 1:", "Textfeld 2:", "Textfeld 3:"]
    for i, text in enumerate(labels, start=1):
        label = Label(frame, text=text, background="goldenrod3", foreground="black", font=("Papyrus", 11))
        label.grid(row=i, column=0, padx=(0, 5), pady=5, sticky="e")

    # Erstelle Textboxen (mehrzeilige Eingabefelder)
    textboxes = []
    for i in range(1, 4):
        textbox = Text(frame, height=1, width=40, background="white", foreground="black")
        textbox.grid(row=i, column=1, padx=(5, 60), pady=5, sticky="w")
        textboxes.append(textbox)

    # Funktion zur Anzeige der Eingabe
    def show_entry():
        texts = [textbox.get("1.0", END) for textbox in textboxes]
        message = "\n".join([f"Textbox {i+1}:\n{text}" for i, text in enumerate(texts)])
        messagebox.showinfo("Eingabe", message)

    # Erstelle einen Button zur Anzeige der Eingabe
    button = Button(frame, text="Eingabe anzeigen", font=("Papyrus", 10), command=show_entry)
    button.grid(row=4, column=0, columnspan=2, pady=10)

    # Ereignis-Handler, um das Drücken der Eingabetaste zu ignorieren
    def disable_enter(event):
        return "break"

    # Binde die Eingabetaste im unteren Textfeld an den Button
    def activate_button(event):
        button.invoke()
        return "break"

    # Binde die Tabulatortaste an den Ereignis-Handler
    def focus_next_widget(event):
        event.widget.tk_focusNext().focus()
        return "break"

    for textbox in textboxes:
        textbox.bind("<Tab>", focus_next_widget)
        textbox.bind("<Return>", disable_enter)

    textboxes[-1].bind("<Return>", activate_button)

    # Binde die Eingabetaste an den Button
    button.bind("<Return>", lambda event: button.invoke())

    # Starte die Hauptschleife
    root.mainloop()

if __name__ == '__main__':
    main()