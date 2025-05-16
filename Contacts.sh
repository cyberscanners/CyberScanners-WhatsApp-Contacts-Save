#!/data/data/com.termux/files/usr/bin/bash

clear

#color
y="\e[1;33m"
r="\e[1;31m"
b="\e[1;34m"
pink='\033[1;35m'
GREEN='\033[1;32m'

# Banner
echo -e "${b}"
echo "  ██████╗██╗   ██╗██████╗ ███████╗██████╗ "
echo " ██╔════╝╚██╗ ██╔╝██╔══██╗██╔════╝██╔══██╗"
echo " ██║      ╚████╔╝ ██████╔╝█████╗  ██████╔╝"
echo " ██║       ╚██╔╝  ██╔══██╗██╔══╝  ██╔══██╗"
echo " ╚██████╗   ██║   ██████╔╝███████╗██║  ██║"
echo "  ╚═════╝   ╚═╝   ╚═════╝ ╚══════╝╚═╝  ╚═╝"

echo -e "${b}"
echo " ███████╗ ██████╗ █████╗ ███╗   ██╗███╗   ██╗███████╗██████╗ ███████╗"
echo " ██╔════╝██╔════╝██╔══██╗████╗  ██║████╗  ██║██╔════╝██╔══██╗██╔════╝"
echo " ███████╗██║     ███████║██╔██╗ ██║██╔██╗ ██║█████╗  ██████╔╝███████╗"
echo " ╚════██║██║     ██╔══██║██║╚██╗██║██║╚██╗██║██╔══╝  ██╔══██╗╚════██║"
echo " ███████║╚██████╗██║  ██║██║ ╚████║██║ ╚████║███████╗██║  ██║███████║"
echo " ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚══════╝"

echo -e "${y}"
echo "================================"
echo "  WhatsApp Group Contacts Save  "
echo "================================"

echo -e "${GREEN}                                > DEVALOPER CYBER BLACK LION! <<${NC}"

termux-open-url https://cyberscanners1.github.io/CyberScanners.com/

#!/bin/bash

# Set password
PASSWORD="#cyber557"

# Ask for password
echo -n "Enter password: "
read -s user_input
echo ""

# Check password
if [ "$user_input" == "$PASSWORD" ]; then
    echo "Access granted."

    # Place your tool code here
    echo "Running your Termux tool..."

    # Example: echo "Hello from your tool!"

else
    echo "Access denied. Incorrect password."
    exit 1
fi

# Reset (or create) the single .vcf file
> group_contacts.vcf

while true; do
    echo ""
    read -p "Enter Name (or type 'done' to finish): " name
    if [[ "$name" == "done" ]]; then
        break
    fi

    read -p "Enter Phone Number (e.g., +94771234567): " phone

    echo "Adding $name - $phone to VCF..."

    # Append contact to the VCF file
    {
        echo "BEGIN:VCARD"
        echo "VERSION:3.0"
        echo "FN:$name"
        echo "TEL;TYPE=CELL:$phone"
        echo "END:VCARD"
    } >> group_contacts.vcf
done


