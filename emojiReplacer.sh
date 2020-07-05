#!/bin/bash
declare -A emjArr7

emjArr7=(
  ['ss0']=':bug:'
  ['ss1']=':bulb:'
  ['ss2']=':hammer:'
  ['ss3']=':moneybag:'
  ['ss4']=':star:'
  ['ss5']=':fire:'
  ['ss6']=':cloud:'
  ['ss7']=':snowflake:'
  ['ss8']=':volcano:'
  ['ss9']=':heavy_check_mark:'
  ['ss10']=':ghost:'
  ['ss11']=':pushpin:'
  ['ssbug']=':bug:'
  ['ssidea']=':bulb:'
  ['ssfix']=':hammer:'
  ['ssmoney']=':moneybag:'
  ['ssstar']=':star:'
  ['ssfire']=':fire:'
  ['sscloud']=':cloud:'
  ['sssnow']=':snowflake:'
  ['ssvolcano']=':volcano:'
  ['sscheck']=':heavy_check_mark:'
  ['ssghost']=':ghost:'
  ['ssfix']=':pushpin:'
)

str=$1

echo "$1 -> $1"

for index in "${!emjArr7[@]}"
do
  str=$(sed 's/'"${index}"'/'"${emjArr7[$index]}"'/g'  <<< $str)
done

echo $str
 