echo 'rclone Setup'
echo 'Make sure to use "onedrive" as remote name when asked'

rclone config

mkdir -p ~/OneDrive

rclone --vfs-cache-mode writes mount "onedrive":  ~/OneDrive

echo 'Done! Make sure to add this command to the startup commands:'
echo '"rclone --vfs-cache-mode writes mount onedrive: /home/stijn/OneDrive &"'
