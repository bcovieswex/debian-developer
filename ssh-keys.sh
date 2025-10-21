#!/usr/bin/env bash

ssh_home_path="${HOME_USER}/.ssh"

mkdir -p "${ssh_home_path}"
chmod 700 "${ssh_home_path}"

path_authorized_keys="${ssh_home_path}/authorized_keys"

cat << EOF > ${path_authorized_keys}

ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDYRil5DvoVS6E3A3YJou8Ifz4fIsHZWjn3I47CA5ECYHf2txCnuscJM+zcLeHAuQZSnCSmwUn5xKfJoaXsAEsukogUcNEldG4B4zq9w2/ZPOtO+gbkwGBD9dUyzXGgm1f6Fu7Ah5oGruCtGU21QVcxLWaBNxLXrJSrfuAZgGWkrZcOIuA/tCH3n1ZBkTdvDXxh0vnRSWk+31jZGfL6mY9GmNuBIEk7btHNI2OG+t9WKQ5iIt13w3eG+AgKWng4pb/tLIa3+0vyo4lCDgQW96z9zGaaZxR6Y5z27dF5hrqyGzIAnF7HYfZGFhFWOfDCdfmiWLGcfACxIQYwo1SLimQ3WS46WbVAoKZKEeqJq4/srVR2kSEDDpCrXBxgX565vHoyMd2ES6KlPoo4tXzDTatD/XYoOMfgAaP+ASupXUHZXhTPi5ICDHExHL5BYzLYrAqpZA5dwE3gLIPNKq75RI4P+zNZ5D4t0tkao/v2Zqdlra4U3enOuDYrf0wcvBPS3hE=
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAII89fp4SlI1+t2Yj0EAHnMkivcGqRgCF4zmFPN3eO7g1
EOF



chmod 600 ${path_authorized_keys}
chown ${USER}:${USER} ${ssh_home_path}