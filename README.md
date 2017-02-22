# Simple WordPress Plugin Updater
This is a simple bash script that runs all available plugin, theme, and core updates for a WordPress site, with some extra benefits.
* Each update is placed in a unique Git commit.  
* All of the commits are made on a single timestamped Git branch.

## How to Install
* Must be run from within the Wordpress project's root folder.
* Can be copied to you /usr/bin/local folder for easy access

## Installation
  ### Mac Installation
  * 1\. Clone this project
  * 2\. make the script executable run
    `$ chmod u+x wpupdater.sh`
  * 3\. Copy the file into your /usr/local/bin folder
    `$ cp wpupdater.sh /usr/local/bin/wpupdater`
  * 4\. Inside any WP root folder, you can now call this script
    `$ wpupdater`
