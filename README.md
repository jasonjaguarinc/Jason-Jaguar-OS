# Jason-Jaguar-OS: A batch "Operating System" for ease-of-use and power from just within Batch!

# (Skip a bit further if you wanna figure out how to get it working, and even further than that for how to use the GUI in 2.0 and up.)

(Sidenote: DO NOT CHANGE THE WINDOW SIZE FOR JASON JAGUAR 2.0 AND UP!!!! This will ruin all the functionality of the graphical parts of the software. Future versions will have fullscreen support and multiple resolution support, but in the current beta I've set the resolution just so it stays relatively simple. If you change it, please close the program and open it again.)

In software today, many of the bigger languages reign supreme: Javascript, Python, C++, and many more. These comprise the bulk of the market since they have many attractive and powerful features that are portable and that people love working with...

HOWEVER, what if we could do something interesting without using these bigger and more complex languages, relying solely on a command terminal language code system? Well, that's what I've done

Introducing Jason Jaguar OS! A little batch shell that directs you to different programs I made within just the batch Windows CMD language. No VBScript, no JScript, nothing other than some batch and external commands. What's the best part? It's incredibly integrated, meaning everything you do from startup only requires the user to compile 1 batch file or EXE. I do the rest behind the scenes, making it easy for first-time users to jump right in to Jason Jaguar OS and makes it extremely operational on Windows computers of all varieties. No dropping DLLs in random locations just for one function, no re-routing directories to get things to link properly, this one program in just thousands of lines of Batch + External commands can do the work that takes other Batch Operating Shells more than 10 different "EXE"s and bat files to get running. Try now, make the dream of an easy batch OS a thing of the past!


# Features included for OS 2.5:

- A functional Graphical User Interface, or clickable GUI, that's been fully implemented and programmed in by me with window-drawing routines
- Inbuilt support for all of Jason Jaguar 1.2.9 and therefore all its apps, as you can run its apps from the JaguarOS Online Store.
- A non-GUI folder explorer that lets you navigate the Jason Jaguar FileSystem
- A Systen info log, which in GUI funnels to a .txt doc in the MainStorage(A) drive and in terminal lists it on the screen without sending to a .txt
- A date & time button, labelled 'Date'
- A Single-digit Calculator that never needs to refresh the screen
- A batch word processor that lets you write for multiple lines and clear the document to write new things in place on the JAGUARWORD.txt doc saved in the "Documents" folder. The "Documents" folder is stored in the "MainStorage(A)" drive of the "JasonJaguarFileSystem" folder, which is located on the root of your C: drive
- A full Jason Jaguar Command Terminal Interface, the first of its kind in Jason Jaguar Operating Shells
- The new MultiFile multitasking system, 100% programmed by me
- Extremely improved screen refreshing code, so now no matter what it never needs to refresh the entire screen and blind you outside of coming back from DOS-only programs
- Paired down amounts of code, learning how to do this as I'm getting better at refining my work
- The ability to reinstall the OS from both the Jaguar command prompt terminal and the GUI from the Spec menu
- A clock with the date on the bottom right that updates when the desktop does
- External Batch software support to load non-standard OS in-built software
- An in-built Code Builder to write external apps for Jason Jaguar OS, located in the Jaguar Command Terminal
- The Jaguar FileSystem PathFinder, finally allowing the user to navigate their Jaguar FileSystem graphically
- The PathFinder window includes the first minimize/maximizing buttons on a Jaguar OS window, allowing the user to make it the size they prefer while browsing their files and folders
- A first for Jaguar OS releases, a new menu bar function called the "Special" menu. Only three applications have a special menu so far, which are the Calculator, PathFinder, and Bubble Popper, but they allow easier ways for the user to do special things with their apps. These could include resetting a window that's not working properly or opening the exact drive location you want to find. Browsing with the Special menu makes Jaguar OS a much easier and faster operating shell.
- A new desktop toy called "Bubble Popper", which lets the user pop "O"s in a small window. I wanted to add something fun to the OS, so I added a small bubbler popper thing to give it more to do.
- New colors for text! It now looks more stylish and easy on the eyes in many of the menus and dropdowns, including the PathFinder.
- A DOS-style installer from initial boot, which is able to exited to from the GUI and acts a lot more like the Operating Shell that it actually is.
- A FileSystem backup feature, accessible through both the Terminal and the GUI.
- A graphical menu before redirecting to Jason Jaguar Legacy Version.
- The ability to boot from a previous FileSystem Backup in both the GUI and the Terminal.
- The ability to nuke your entire install of JaguarOS and the FileSystem from the Terminal.
- Multi drive install support, so you aren't required to use a C: drive and can use whatever drive your version of Windows is installed on to install Jason Jaguar.
- Made the JaguarOS Online Store, now capable of letting the user download software right from the OS to play from the PathFinder. (also available in the Terminal in its current limited form)
- Figured out what is essentially JaguarOS's fullscreen mode: Change the font size by right clicking the title top bar for the JaguarOS window and click on properties. From there in the new window it spawns, click on the "Font" section in the buttons at the top and change the size. The size should not completely fill the screen, as that will give it a scroll bar and ruin the graphic interface, but you can change it to as high as it will go (and you can even input your own value in between the ones they give you to customize it more). Once you set it correctly, the EXE you made that has that font change will stay like that and you can use it as even more of the desktop interface that it was meant to be! Not exactly something I made, but it's one thing I discovered and am glad to have discovered.
- Can now detect if you have Advanced BAT to EXE converter, and download it if you don't as well as being able to tell you how to build the OS.
- Updated PathFinder to 1.7, adding different colored folders to differentiate them from the files, the ability to count how many files and folders there are in a given directory, and an updated special menu for it.
- Fully working online updating, so now you can grab the latest version of JaguarOS right from the OS itself and install it entirely locally (this option in the GUI replaces the "Appinst" option, so now the only way to open your APP.bat file is from the PathFinder).
- New "about" pages for Calculator, Pathfinder, and Bubble popper, complete with nice colors to look at.
- Fixed a rendering issue with the Jaguar Calculator, so now the answer stays within the window.
- Fixed some bugs in the Terminal's FileSystem nuking code.
- Took out a lot of bloat and filler code with the removal of the in-built Jaguar 1.2.9 support, as you'll be able to download any piece of software from its initial release on the store.
- Rebranded many things to say JaguarOS instead of Jason Jaguar, moving branding over to that name gradually.
- A new "Settings" app, put right where "About" used to be and now allows the user to customize their username, re-sync the date and time, capture their system's specifications, and choose whether they wanna boot back to JaguarDOS Boot or regular JaguarDOS when clicking the red ".X." on the top-most right
- An updated PathFinder, now with the annoying screen hotspot removed from the bottom, the "APP.BAT" Y/N screen exiting to the main B: drive screen if you click no, fixing a few hitboxes, and the ability to move between the current directory tree by clicking on the directory you'd wish to go to
- Heavily improved multitasking with the MultiFile system, now actually allowing the user to go back to what open important app they had in the background from something like the "About" window
- Clicking the bottom left or right on the desktop allows to the change the username and date/time respectively while on the desktop
- A much more put-together and smooth aesthetic interface, with everything now saying "JaguarOS" and a generally cleaner look to all the options
- Removal of the text in the middle on the desktop that's been there from the beginning, now replaced with actual space for your windows
- Assures beforehand if you actually mean to capture system specs and change username
- And a few general QOL and stability improvements!



# How does one get Jason Jaguar OS (all current versions) up and running?

Due to complications with Batch, I can't make a simple "download and run" executable file. However, what's there isn't much more complicated than that.

# For Jason Jaguar 2.0 Early Beta (Software Compatibility Release) and up:

You will need:
Advanced BAT to EXE Converter by Brandon Dargo: https://www.battoexeconverter.com
Jason Jaguar 2.0 and up's source code/.bat file

Download the .bat file that says "Jason Jaguar 2.0 Early Beta (Software Compatibility Release)" (or anything higher in number) and open the Advanced BAT to EXE Converter program. Remember where you downloaded Jason Jaguar 2.0 and up's .bat file so you can then use it for this part. If it's in your downloads folder, you don't have to do anything. in Advanced BAT to EXE Converter, click "File" on the top left and then open. This will open a folder dialog box, and you need to navigate to where the Jason Jaguar .bat is and click it to open.

Once in the menu after loading all the code, click the button right next to the "Play" button on the second to top row. This will "compile" and build your "EXE" for you, allowing the commands I wrote to all work correctly. Once you click it, it will bring up a "Select EXE Options" window. You shouldn't change these setting if you don't know what they do, I've put the preset ones so it works the way I intended with the window. You can then set the EXE to whatever folder you like (preferably desktop so it's easy to reach) and voila! Close the Advanced BAT to EXE Converter program, it is no longer needed by you. Don't delete it, this will be crucial in updating to newer versions of Jason Jaguar OS when they come out. Enjoy Jason Jaguar 2.0 and up, the most up-to-date and most complete versions of the software.

# (Sidenote in case you missed the first one: DO NOT CHANGE THE WINDOW SIZE FOR JASON JAGUAR 2.0 AND UP!!!! This will ruin all the functionality of the graphical parts of the software. Future versions will have fullscreen support and multiple resolution support, but in the current beta I've set the resolution just so it stays relatively simple. If you change it, please close the program and open it again.)


# For Jason Jaguar 1.2.9

You will need:
Jason Jaguar 1.2.9 and below's source code/.bat file

Once downloaded, just open it and it'll start running! Windows SmartScreen or some other thing might stop it from opening, but if it does just click the underscored "More info" text, click "Run anyway", and it'll open! You'll never have to do it again, Windows will know what to do with it after based on your settings unless you open it. Have fun with Jason Jaguar's earlier releases!





# How to use the GUI in Jason Jaguar 2.0 and up!

There aren't any dragable icons or windows in this build, so for now there's only button input! Of course, as many GUIs let you do, it includes mouse input! Click on any of the clickable buttons, and it will refresh the screen redirecting you to the menu you clicked. It works the way you'd think for clickable buttons, very straight-forward. I had to make an addendum that stated you couldn't drag anything though, that was important. We have lots of cool graphical tiling and graphics that were previously impossible on the other versions of Jason Jaguar pre-2.0. I don't think it needs much more in introduction, try it out yourself!)

(You can also press "2" during startup post-bios and FileSystem creation, and 0 in any of the full GUI and a few other menus to open the Jason Jaguar Command Terminal. It's a basic terminal, but it allows practically the entire functionality of the system from just within itself which is the way real terminals work.)




# This is such a fun little program to make, I hope you enjoy my OS!
