#!/bin/bash
declare -A emjArr8

emjArr8=(
  ['0']=':bug:'
  ['1']=':bulb:'
  ['2']=':hammer:'
  ['3']=':moneybag:'
  ['4']=':star:'
  ['5']=':fire:'
  ['6']=':cloud:'
  ['7']=':snowflake:'
  ['8']=':volcano:'
  ['9']=':heavy_check_mark:'
  ['10']=':ghost:'
  ['11']=':pushpin:'
  ['bug']=':bug:'
  ['idea']=':bulb:'
  ['fix']=':hammer:'
  ['money']=':moneybag:'
  ['star']=':star:'
  ['fire']=':fire:'
  ['cloud']=':cloud:'
  ['snow']=':snowflake:'
  ['volcano']=':volcano:'
  ['check']=':heavy_check_mark:'
  ['ghost']=':ghost:'
  ['pin']=':pushpin:'
)

for index in {0..11}
do
  echo "${index} - ${emjArr8[$index]}"
done

read -p '(0 bug) :' emojiType

# default value set 
emojiType=${emojiType:-0} 

slectedEmoji=${emjArr8[$emojiType]}

echo $slectedEmoji
 