#!/bin/bash

#Get screen size
root_geo=$(xwininfo -root | awk -F'[ +]' '$3 ~ /-geometry/ {print $4}')

#infinite loop
while :
do
  #Check if any window fills the screen
  win_fills=$(xwininfo -root -tree | grep $root_geo)
  #If any window fills the screen hide polybar, otherwise show it
  if [ -z "$win_fills" ]
    then
      polybar-msg cmd show
  else
      polybar-msg cmd hide
  fi
  sleep 1
done
