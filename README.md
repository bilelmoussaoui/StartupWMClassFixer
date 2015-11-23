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
 sudo ./fix --apply --force-update
```
Or 
```bash
 sudo ./fix -a -u
```

### Why using `sudo` ?
Almost all the application desktop files are stored in `/usr/share/applications` that's why we need root permissions to modify those files.


### How to contribute? 
  1. Open the application 
  2. Open Gnome Monitor System
  3. Go to processes tab and look for the application you just opened
  4. Clone the repository and modify the database file following this
  
  ```bash
    Application Name, Desktop file name, Processus name
  ```
  5. Create a pull request
