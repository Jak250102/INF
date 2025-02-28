#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Kurze Beschreibung des Programms.
"""

import tkinter as tk
from tkinter import messagebox

def main():
	# Hauptfunktion des Programms
	hallo = "Hallo Welt"
	test2 = "dies ist ein test"
	ergebns = hallo + test2

	# Erstelle das Hauptfenster
	root = tk.Tk()
	root.title("Test")
	root.eval('tk::PlaceWindow . center')
	root.config(width=454, height=100, background="grey")


	# Erstelle einen Rahmen (Frame) zur Zentrierung
	frame = tk.Frame(root)
	frame.pack(expand=True)
	frame.config(background="black", width=70)



	# Erstelle ein Eingabefeld
	entry = tk.Entry(frame)
	entry.pack(pady=10, padx=10 )  # Abstand nach oben und unten
	entry.config(width=50, background="white", foreground="black")

	# Funktion zur Anzeige der Eingabe
	def show_entry():
		messagebox.showinfo("Eingabe", entry.get())

	# Erstelle einen Button zur Anzeige der Eingabe
	button = tk.Button(frame, text="Eingabe anzeigen", command=show_entry)
	button.pack(pady=10)  # Abstand nach oben und unten

# Zentriere den Rahmen
	frame.place(relx=0.5, rely=0.5, anchor='center')

	# Starte die Hauptschleife
	root.mainloop()

if __name__ == '__main__':
	main()