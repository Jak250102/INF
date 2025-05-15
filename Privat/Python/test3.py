import tkinter as tk

root = tk.Tk()
root.title("Grid + Text Widget")

# Eingabefelder
tk.Label(root, text="Name:").grid(row=0, column=0, padx=5, pady=5)
entry_name = tk.Entry(root)
entry_name.grid(row=0, column=1, padx=5, pady=5)

tk.Label(root, text="Alter:").grid(row=1, column=0, padx=5, pady=5)
entry_age = tk.Entry(root)
entry_age.grid(row=1, column=1, padx=5, pady=5)

# Großes Textfeld
tk.Label(root, text="Bemerkungen:").grid(row=2, column=0, padx=5, pady=5)
text_widget = tk.Text(root, height=5, width=30)
text_widget.grid(row=2, column=1, padx=5, pady=5)

root.mainloop()
