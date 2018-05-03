#!/bin/bash

set +x

count=100
for font in Roboto-Thin Roboto-Light Roboto-Bold Roboto-Condensed-Regular
	do for size in 150 100 58 12
		do for color in white red 
			do for number in `seq 0 9`
				do mkdir -p $size/$font/$color/ 
				# echo $count: convert -background none -fill $color -font $font -pointsize $size label:$number $size/$font/$color/$(($count+$number)).png
				convert -background none -fill $color -font $font -pointsize $size label:$number $size/$font/$color/$(($count+$number)).png
			done
			count=$(($count+10))
		done
	done
done
