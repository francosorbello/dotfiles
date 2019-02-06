#!/bin/bash

var=$(zenity --entry --text="Ingresa lo que queres buscar:")

var2=$(echo "${var}" | sed 's/\s/+/g')

surf "https://www.google.com/search?&q=${var2}" &