import tkinter as tk
from tkinter import messagebox

def on_button_click():
    messagebox.showinfo("Information", "Button Clicked!")

def create_square(canvas, x, y, size):
    canvas.create_rectangle(x, y, x + size, y + size, fill="tomato")

def create_rectangle(canvas, x1, y1, x2, y2):
    canvas.create_rectangle(x1, y1, x2, y2, fill="white", outline="white")

def create_rectangle_with_text(canvas, x1, y1, x2, y2, text1, text2):
    canvas.create_rectangle(x1, y1, x2, y2, fill="white", outline="white")
    
    # Create the text label in the top left corner of the rectangle
    canvas.create_text((x1+5), (y1+5), text=text1, fill="tomato", font=("Arial", 10, "bold"), anchor="nw")

def direction_rectangle_with_text(canvas, x1, y1, x2, y2, text1, text2):
    canvas.create_rectangle(x1, y1, x2, y2, fill="white", outline="white")
    
    # find the center of the rectangle
    # center_x = (x1 + x2) / 2
    # center_y = (y1 + y2) / 2
    
    # Create the text label in the top left corner of the rectangle
    canvas.create_text((x1+5), (y1+5), text=text1, fill="tomato", font=("Arial", 10, "bold"), anchor="nw")

    #create another label in the rectangle lower
    canvas.create_text((x1+5), (y1+50), text=text2, fill="tomato", font=("Arial", 10, "bold"), anchor="nw")

def update_rectangle_text(*args):
    from_selection = from_var.get()
    to_selection = to_var.get()
    canvas.delete("lower_text")  # Remove existing text in the lower rectangle
    canvas.create_text(30, 130, text=f"From location: {from_selection}\nTo location: {to_selection}", fill="tomato", font=("Arial", 10, "bold"), anchor="nw", tags="lower_text")

# Create the main window
root = tk.Tk()
root.title("Simple GUI")
root.geometry("400x600")
root.configure(bg="tomato")

# Create a label
label = tk.Label(root, text="Campus Directory", font=("Arial", 24, "bold"), bg="tomato", fg="white")
label.pack(pady=10)

# Create a button
# button = tk.Button(root, text="Click Me", command=on_button_click)
# button.pack(pady=5)

# Create a canvas widget
canvas = tk.Canvas(root, width=400, height=600, bg="tomato", highlightthickness=0, bd=0)
canvas.pack()

# Create a square in the canvas
# create_square(canvas, 25, 100, 100)

# Create a rectangle in the canvas
direction_rectangle_with_text(canvas, 25, 10, 375, 100, text1="From: ", text2="To: ")

# Add dropdown and text input inside the rectangle
# Dropdown menu for "From"
from_options = ["Location A", "Location B", "Location C"]
from_var = tk.StringVar(value=from_options[0])
from_var.trace("w", update_rectangle_text)
from_dropdown = tk.OptionMenu(root, from_var, *from_options)
canvas.create_window(70, 15, window=from_dropdown, anchor="nw")

# Text input for "To"
# to_input = tk.Entry(root)
# canvas.create_window(55, 60, window=to_input, anchor="nw")

to_options = ["Location A", "Location B", "Location C"]
to_var = tk.StringVar(value=to_options[0])
to_var.trace("w", update_rectangle_text)
to_dropdown = tk.OptionMenu(root, to_var, *to_options)
canvas.create_window(55, 60, window=to_dropdown, anchor="nw")

# Create a rectangle in the canvas
create_rectangle(canvas, 25, 125, 375, 510)

# Initial text in the lower rectangle
canvas.create_text(30, 130, text=f"From location: {from_options[0]}\nTo location: {to_options[0]}", fill="tomato", font=("Arial", 10, "bold"), anchor="nw", tags="lower_text")

# Run the application
root.mainloop()
