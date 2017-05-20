# StartupWMClassFixer
Will help you fix unrecognized, ugly or double icons in Linux.

## Dependencies
- `wget`

## How to install
#### Arch Linux
```bash
yaourt -S startupwmclassfixer
```
#### Manual installation
Download the [zip folder](https://github.com/bil-elmoussaoui/StartupWMClassFixer/archive/master.zip) or clone the repository
  ```bash
git clone https://github.com/bil-elmoussaoui/StartupWMClassFixer.git
```

## How to use
Open the script using 
```bash
sudo ./fix
```

Or using this if you've installed the script from a package 
```bash
sudo StartupWMClassFixer
```
  
### Arguments
#### How to revert
You can revert your modifications using `--revert` argument.
```bash
  sudo ./fix --revert
```
#### How to use latest version of database file
```bash
 sudo ./fix --force-update
```

## FAQ

#### Why using `sudo` ?
Almost all the application desktop files are stored in `/usr/share/applications` that's why we need root permissions to modify them.

#### How the script works? 
The script will modify the desktop file of supported applications ([list of supported applications](https://github.com/bil-elmoussaoui/StartupWMClassFixer/blob/master/database.csv)) and add/modify `StartupWMClass` key. 

For more informations about `StartupWMClass` see [Recognized desktop entry keys](http://standards.freedesktop.org/desktop-entry-spec/latest/ar01s05.html). 

#### How to contribute? 
1. Open the application 
2. Open the terminal and type `xprop WM_CLASS`
3. The mouse cursor will change, click on the application window and copy the `WM_CLASS(STRING)` value
4. Clone the repository and modify the database file following this

  ```
    Application Name, Desktop file name, WM_CLASS
  ```

5. Create a pull request
