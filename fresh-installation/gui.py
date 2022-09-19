from tkinter import *
import os.path
import tkinter
from tkinter import messagebox
import subprocess
gui = Tk()
gui.title('Linux Automated Audit')
gui.geometry("670x200")
icon1= PhotoImage(file = "assets/audit.png")
icon2= PhotoImage(file = "assets/report.png")
icon3= PhotoImage(file = "assets/summary.png")
icon4= PhotoImage(file = "assets/exit.png")

def cmd1():
    ad = subprocess.run(["bash", "main.sh"])
    adout = ad.stdout
    
def cmd2():
    if os.path.isfile("report.txt"):
        rpt = subprocess.run(["cat", "report.txt"])
    else:
        messagebox.showwarning("Error", "Run an audit first!")
def cmd3():
    if os.path.isfile("res.html"):
        subprocess.run(["sh", "opensummary.sh"])
    else:
        messagebox.showwarning("Error", "Run an audit first!")
def cmd4():
    gui.destroy()

Label(text="").grid(row=0,column=1,pady=20)
Button(gui, text= "Run Audit", image = icon1, command=cmd1).grid(row=1, column=1, padx= 50, pady= 5)
Button(gui, text= "Audit Results", image = icon2, command=cmd2).grid(row=1, column=2, padx= 50, pady= 5)
Button(gui, text= "Audit Summary", image = icon3, command=cmd3).grid(row=1, column=3, padx= 50, pady= 5)
Button(gui, text= "Exit", image = icon4, command=cmd4).grid(row=1, column=4, padx= 50, pady= 5)
Label(text="Run Audit").grid(row=2,column=1)
Label(text="Audit Results").grid(row=2,column=2)
Label(text="Audit Summary").grid(row=2,column=3)
Label(text="Exit").grid(row=2,column=4)
    

gui.mainloop()
