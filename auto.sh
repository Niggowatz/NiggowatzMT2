#!/bin/sh
SERVICE='Reiche_Ch1'
START="./${SERVICE} &"
while ( : ) do
  if ps ax | grep -v grep | grep $SERVICE > /dev/null
  then
    true
  else
    echo "$SERVICE is not running"
    $START
  fi
  sleep 10
done
