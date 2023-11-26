inst_theme() {
    cd ./MacSonoma-kde
    ./install.sh # Theme
}
inst_icon() {
    cd ./WhiteSur-icon-theme
    ./install.sh # Icon
}
inst_cursors() {
    cd ./WhiteSur-cursors
    ./install.sh # Cursors
}
uninst_theme() {
    cd ./MacSonoma-kde
    ./uninstall.sh # Theme
}
uninst_icon() {
    cd ./WhiteSur-icon-theme
    ./uninstall.sh # Icon
}
uninst_cursors() {
    cd ./WhiteSur-cursors
    ./uninstall.sh # Cursors
}

if test $# == 0; then
    inst_theme
    inst_icon
    inst_cursors
else
    case $1 in
    --help)
        cat info.txt
        ;;
    --inst | -i)
        if test "$#" != "1"; then
            case $2 in
            theme)
                inst_theme
                ;;
            icon)
                inst_icon
                ;;
            cursors)
                inst_cursors
                ;;
            all)
                inst_theme
                inst_icon
                inst_cursors
                ;;
            *)
                exit 1
                ;;
            esac
        else
            inst_theme
            inst_icon
            inst_cursors
        fi
        ;;
    --uninst | -u)
        if test "$#" != "1"; then
            case $2 in
            theme)
                uninst_theme
                ;;
            icon)
                uninst_icon
                ;;
            cursors)
                uninst_cursors
                ;;
            all)
                uninst_theme
                uninst_icon
                uninst_cursors
                ;;
            *)
                exit 1
                ;;
            esac
        else
            uninst_theme
            uninst_icon
            uninst_cursors
        fi
        ;;
    esac
fi
