#!/bin/bash
declare -A emjArr7

emjArr7=(
  ['s0']=':bug:'
  ['s1']=':bulb:'
  ['s2']=':hammer:'
  ['s3']=':moneybag:'
  ['s4']=':star:'
  ['s5']=':fire:'
  ['s6']=':cloud:'
  ['s7']=':snowflake:'
  ['s8']=':volcano:'
  ['s9']=':heavy_check_mark:'
  ['s10']=':ghost:'
  ['s11']=':pushpin:'
  ['s11']=':black_nib:'
  ['s11']=':pencil:'
  ['sbug']=':bug:'
  ['sidea']=':bulb:'
  ['sfix']=':hammer:'
  ['smoney']=':moneybag:'
  ['sstar']=':star:'
  ['sfire']=':fire:'
  ['scloud']=':cloud:'
  ['ssnow']=':snowflake:'
  ['svolcano']=':volcano:'
  ['scheck']=':heavy_check_mark:'
  ['sghost']=':ghost:'
  ['sfix']=':pushpin:'
  ['spen']=':black_nib:'
  ['spencil']=':pencil:'
)

str=$1

for index in "${!emjArr7[@]}"
do
  str=$(sed 's/'"${index}"'/'"${emjArr7[$index]}"'/g'  <<< $str)
done

echo $str
 