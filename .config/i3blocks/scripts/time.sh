LCLK_00="󱑖"
LCLK_01="󱑋"
LCLK_02="󱑌"
LCLK_03="󱑍"
LCLK_04="󱑎"
LCLK_05="󱑎"
LCLK_06="󱑐"
LCLK_07="󱑑"
LCLK_08="󱑒"
LCLK_09="󱑓"
LCLK_10="󱑔"
LCLK_11="󱑕"

CLK_00="󱑊"
CLK_01="󱐿"
CLK_02="󱑀"
CLK_03="󱑁"
CLK_04="󱑂"
CLK_05="󱑃"
CLK_06="󱑄"
CLK_07="󱑅"
CLK_08="󱑆"
CLK_09="󱑇"
CLK_10="󱑈"
CLK_11="󱑉"

TIME=$(date '+%H:%M')
HR=$(date '+%I')

get_time() {
        case $HR in
        01)  echo " $LCLK_01 $TIME " ;;
        02)  echo " $LCLK_02 $TIME " ;;
        03)  echo " $LCLK_03 $TIME " ;;
        04)  echo " $LCLK_04 $TIME " ;;
        05)  echo " $LCLK_05 $TIME " ;;
        06)  echo " $LCLK_06 $TIME " ;;
        07)  echo " $LCLK_07 $TIME " ;;
        08)  echo " $LCLK_08 $TIME " ;;
        09)  echo " $LCLK_09 $TIME " ;;
        10)  echo " $LCLK_10 $TIME " ;;
        11)  echo " $LCLK_11 $TIME " ;;
        12)  echo " $LCLK_00 $TIME " ;;
        esac
}

get_time

