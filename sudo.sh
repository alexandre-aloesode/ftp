#!/bin/bash

echo "Veuillez entrer votre mot de passe root"

read MDP

echo "$MDP" | su -
