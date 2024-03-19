# local environment variables
EDITOR="nvim"
PATH="$PATH:$HOME/.local/bin"
QT_QPA_PLATFORM="wayland-egl"

# If running from tty1 start Hyprland
if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    dbus-run-session Hyprland
fi
