# WHAT THIS SCRIPT DOES

This script adds (`git add .`), commits (`git commit -m`) and pushes (`git push`) your repos for you with minimal input.

## Your input

An optional commit message. If you don't wish to input a custom commit message, a generic automessage will be entered.


# PREP WORK

0. Install expect, a small (<1mb) scripting language that's used to automate interactive applications. It is required for this script to work
     * Ubuntu/Debian :

     ```sudo apt-get install expect```
     * Fedora/RHEL/CentOS:

     ```sudo dnf install expect``` or ```sudo yum install expect```
     * Arch Linux:

     ```sudo pacman -S expect```
     * openSUSE:

     ```sudo zypper install expect```


1. Clone this repo

   ```git clone https://github.com/cincodemayo11/git-pusher.git```

2. Navigate (`cd`) into the repo folder

3. Run the installer

   ```sudo ./install```

4. Create an environment variable called `GITUSER` and enter your Github username as its value by following the following instructions:

   * Use a text editor of choice to open your `.bashrc` file.

   I will use Emacs as an example.

- Open your shell start up file:

       emacs ~/.bashrc

- at the bottom of the file, type:

       export GITUSER="your_username_here"

5. Set your github password as variable `GITPASS` and enter your Github Personal Access Token as its value.

- Open your shell start up file:

       emacs ~/.bashrc

- at the bottom of the file, type:

       export GITPASS="your_PAT_here"

   Disclaimer: ```Don't omit the speech marks```

   What if I don't have a `.bashrc` file? - *Create one*

- Save and exit from the text editor.

6. In the terminal, run `source ~./bashrc` to save and apply all changes.

# TO PUSH

1. Navigate (`cd`) into the folder you want to push.

2. Run the program by simply running

   ```pu.sh```

3. Input commit message (or leave it empty to get an automessage) and press Enter.

You do not need to use speech marks or apostrophes when typing a commit message

4. Pray to your God that this works

If you want to change username or password, simply go to your `.bashrc` file and change the `GITPASS` or `GITUSER` variables' contents to reflect the new changes.

Feel free to report any issues or ask any questions.

*****************God bless all frogs and may they roam and croak the Earth*****************
