# StartupWMClassFixer
Will help you fix unrecognized, ugly or double icons in Linux.

### How to use
  1. Download the [zip folder](https://github.com/bil-elmoussaoui/StartupWMClassFixer/archive/master.zip) or clone the repository
  
  ```bash
  git clone https://github.com/bil-elmoussaoui/StartupWMClassFixer.git
  ```
  2. Open the script using 
  
  ```bash
  sudo ./fix
  ```
  
  or 
  
  ```bash
  sudo ./fix --apply 
  ```
  
### How to revert
Open the terminal and use
```bash
  sudo ./fix --revert
```

### How to use latest version of database file
You can use 
```bash
 sudo ./fix --force-update
```

## FAQ

### Why using `sudo` ?
Almost all the application desktop files are stored in `/usr/share/applications` that's why we need root permissions to modify those files.

### Why Wine applications are not supported? 
Wine applications have two `WM_CLASS` values. The default one and `wine`. Which makes it impossible to change the icon as `wine` icon will always be used instead of the default one.

### How the script works? 
The script will modify the desktop file of supported applications ([list of supported applications](https://github.com/bil-elmoussaoui/StartupWMClassFixer/blob/master/database.csv)) and add/modify `StartupWMClass` key. 

For more informations about `StartupWMClass` see [Recognized desktop entry keys](http://standards.freedesktop.org/desktop-entry-spec/latest/ar01s05.html). 

### How to contribute? 
  1. Open the application 
  2. Open the terminal and type `xprop WM_CLASS`
  3. The mouse cursor will change, click on the application and copy the `WM_CLASS(STRING)` value
  4. Clone the repository and modify the database file following this <br/>
  <code>
    Application Name, Desktop file name, WM_CLASS
  </code>
  5. Create a pull request
