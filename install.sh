#!/usr/bin/env bash
RAW_DEPS=$(sed '1d' deps.csv | sort)

while IFS="," read PACKAGE_NAME IS_OPTIONAL; do
    CHECKLIST+=("$PACKAGE_NAME")
    CHECKLIST+=('')

    if [ "$IS_OPTIONAL" = "X" ]; then
        CHECKLIST+=(off)
    else
        CHECKLIST+=(on)
    fi
done < <(echo "$RAW_DEPS")


# Prompt a package checklist
PACKAGES=$(\
    dialog \
        --title "Package install repo" \
        --ok-label "Install" \
        --checklist 'Please select which packages you wish to install:' 20 60 0 "${CHECKLIST[@]}"\
        3>&1 1>&2 2>&3 3>&- \
)

clear

# Quit if no packages were selected
if [ -z "$PACKAGES" ]; then
    exit
fi

# Install selected packages
# yay -S $PACKAGES

# Install zplug
git clone https://github.com/zplug/zplug ~/.zplug

echo "Linking files..."
ln -srf .zshrc ~/
ln -srf .config/* ~/.config/

. "$PWD/scripts/rclone-setup.sh"


# We're done
echo "Done!"
