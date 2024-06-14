# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# Gonçalo
alias atom="/home/gribeiro/PhD/phd_experiments/Camera_calibration/ATOM/docker.sh"
alias kinect="/home/gribeiro/PhD/phd_experiments/Camera_calibration/Kinect/Dockerfiles/docker.sh"

fortune | cowsay
