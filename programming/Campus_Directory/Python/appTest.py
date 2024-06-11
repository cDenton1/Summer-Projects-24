import tkinter as tk
from tkinter import messagebox

def on_button_click():
    messagebox.showinfo("Information", "Button Clicked!")

def create_square(canvas, x, y, size):
    canvas.create_rectangle(x, y, x + size, y + size, fill="tomato")

def create_rectangle(canvas, x1, y1, x2, y2):
    canvas.create_rectangle(x1, y1, x2, y2, fill="#ff9966", outline="#ff9966")

def direction_rectangle_with_text(canvas, x1, y1, x2, y2, text1, text2):
    canvas.create_rectangle(x1, y1, x2, y2, fill="#ff9966", outline="#ff9966")
    
    # find the center of the rectangle
    # center_x = (x1 + x2) / 2
    # center_y = (y1 + y2) / 2
    
    # Create the text label in the top left corner of the rectangle
    canvas.create_text((x1+5), (y1+5), text=text1, fill="white", font=("Arial", 12, "bold"), anchor="nw")

    #create another label in the rectangle lower
    canvas.create_text((x1+5), (y1+50), text=text2, fill="white", font=("Arial", 12, "bold"), anchor="nw")

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
direction_rectangle_with_text(canvas, 25, 10, 375, 110, text1="From: ", text2="To: ")

# Create a rectangle in the canvas
# create_rectangle(canvas, 25, 120, 375, 220)

# Run the application
root.mainloop()
