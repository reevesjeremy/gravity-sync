# GRAVITY SYNC BY VMSTAN #####################
# gs-colors.sh ###############################

# For documentation or downloading updates visit https://github.com/vmstan/gravity-sync
# This code is called from the main gravity-sync.sh file and should not execute directly!

## Script Colors
RED='\033[0;91m'
GREEN='\033[0;92m'
CYAN='\033[0;96m'
YELLOW='\033[0;93m'
PURPLE='\033[0;95m'
BLUE='\033[0;94m'
BOLD='\033[1m'
NC='\033[0m'

## Message Codes
FAIL="[${RED}✗${NC}]"
WARN="[${PURPLE}!${NC}]"
GOOD="[${GREEN}✓${NC}]"
STAT="[${CYAN}e${NC}]"
INFO="[${YELLOW}i${NC}]"
NEED="[${BLUE}?${NC}]"
LOGO="[${PURPLE}∞${NC}]"

## Request https://github.com/vmstan/gravity-sync/issues/20
##[2020-05-28 19:46:54]

function get_date_time {
    if [ "${DATE_OUTPUT}" == "1" ]
    then
        echo "[$(date "+%F %T")] "
    fi
}

## Echo Stack
### Informative
function echo_info {
    gdt=$(get_date_time)
    echo -e "${gdt}${INFO} ${YELLOW}${MESSAGE}${NC}"
}

### Warning
function echo_warn {
    gdt=$(get_date_time)
    echo -e "${gdt}${WARN} ${PURPLE}${MESSAGE}${NC}"
}

### Executing
function echo_stat {
    gdt=$(get_date_time)
    echo -en "${gdt}${STAT} ${MESSAGE}"
}

### Success
function echo_good {
    gdt=$(get_date_time)
    echo -e "\r${gdt}${GOOD} ${MESSAGE}"
}

### Success
function echo_sameline {
    echo -en "                                                                                        "
    echo -en "\r"
}

### Failure
function echo_fail {
    gdt=$(get_date_time)
    echo -e "\r${gdt}${FAIL} ${MESSAGE}"
}

### Request
function echo_need {
    gdt=$(get_date_time)
    echo -en "${gdt}${NEED} ${BOLD}${MESSAGE}:${NC} "
}

### Gravity Sync Logo
function echo_grav {
    echo -e "${LOGO}${BOLD}${MESSAGE}${NC}"
}

### Lines
function echo_lines {
    echo -e "========================================================"
}

### Lines
function echo_blank {
    echo -e ""
}


