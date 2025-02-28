#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Kurze Beschreibung des Programms.
"""

import tkinter as tk
from tkinter import messagebox
from tkinter import *
from tkinter import font

def main():
    # Hauptfunktion des Programms
    hallo = "Hallo Welt"
    test2 = "dies ist ein test"
    ergebns = hallo + test2

    # Erstelle das Hauptfenster
    root = tk.Tk()
    root.title("Test")
    root.eval('tk::PlaceWindow . center')
    root.config(width=500, height=300, background="dark goldenrod")	
    
    # Erstelle einen Rahmen (Frame) zur Zentrierung
    frame = tk.Frame(root, background="dark goldenrod")
    frame.grid(row=0, column=0, padx=10, pady=10)

    # Erstelle eine Überschrift für die Textboxen
    label = tk.Label(frame, text="Bitte geben Sie Ihre Texte ein:", background="dark goldenrod", foreground="white", font=("Papyrus", 12), highlightthickness=2, highlightbackground="black")
    label.grid(row=0, column=0, columnspan=2, pady=10)

    # Erstelle eine Textbox (mehrzeiliges Eingabefeld)
    textbox = tk.Text(frame, height=1, width=50, background="white", foreground="black")
    textbox.grid(row=1, column=0, padx=5, pady=5)

    textbox2 = tk.Text(frame, height=1, width=50, background="white", foreground="black")
    textbox2.grid(row=2, column=0, padx=5, pady=5)

    # Funktion zur Anzeige der Eingabe
    def show_entry():
        text1 = textbox.get("1.0", tk.END)
        text2 = textbox2.get("1.0", tk.END)
        message = f"Textbox 1:\n{text1}\nTextbox 2:\n{text2}"
        messagebox.showinfo("Eingabe", message)

    # Erstelle einen Button zur Anzeige der Eingabe
    button = tk.Button(frame, text="Eingabe anzeigen", font=("Papyrus", 10), command=show_entry)
    button.grid(row=3, column=0, pady=10)

    # Ereignis-Handler, um das Drücken der Eingabetaste zu ignorieren
    def disable_enter(event):
        return "break"

    # Binde die Eingabetaste an den Ereignis-Handler
    textbox.bind("<Return>", disable_enter)

    # Binde die Eingabetaste im unteren Textfeld an den Button
    def activate_button(event):
        button.invoke()
        return "break"

    textbox2.bind("<Return>", activate_button)

    # Binde die Tabulatortaste an den Ereignis-Handler
    def focus_next_widget(event):
        event.widget.tk_focusNext().focus()
        return "break"

    textbox.bind("<Tab>", focus_next_widget)
    textbox2.bind("<Tab>", focus_next_widget)

    # Binde die Eingabetaste an den Button
    button.bind("<Return>", lambda event: button.invoke())

    # Starte die Hauptschleife
    root.mainloop()

if __name__ == '__main__':
    main()