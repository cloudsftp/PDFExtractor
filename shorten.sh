#!/bin/sh

if [ -z "$(ls | grep Out)" ]
then
  mkdir Out
fi

# pick slides out of every lecture

for conf in Config/*
do
  pages="$(cat $conf | tr '\n' ' ')"
  confpdf="$(echo $conf | sed 's/pages/pdf/g')"
  input="$(echo $confpdf | sed 's/Config/In/g')"
  output="$(echo $confpdf | sed 's/Config/Out/g')"

  echo "shortening ${input}"
  pdftk $input cat $pages output $output
done

# merge all shortened lectures

cd Out
rm -f master.pdf
shortened_lectures="$(ls | tr '\n' ' ')"
echo "merging ${shortened_lectures}"
pdftk $shortened_lectures cat output master.pdf
