commver() {
    if test $(command -v $1) != ""; then
        return true
    else
        return false
    fi
}
