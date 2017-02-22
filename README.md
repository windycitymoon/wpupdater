### Simple Plugin Updater
This is a simple bash script that runs all available plugin, theme, and core updates for a WordPress site, with some nice benefits.
* Each Update is placed in a unique GIT commit.  
* All of the commits are made on a new timestamped GIT branch.

### How to Install
* Must be run from within the Wordpress project's root folder.
* Can be copied to you /usr/bin/local folder for easy access

Mac Installation
1. Clone this project
2. run `$ chmod u+x wpupdater.sh` to make the script executable
3. Copy the file into your /usr/local/bin folder
    `$ cp wpupdater.sh /usr/local/bin/wpupdater`
4. Inside any WP root folder, you can now run "wpupdater"

Notes
* This assumes that /usr/local/bin folder has been added to you $PATH variable
