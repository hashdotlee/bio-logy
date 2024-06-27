# Description: Convert all images in the public folder to webp format
echo "Converting images to webp format"

num_files=$(ls src/assets/images/*.{png,jpg,jpeg} 2>/dev/null | wc -l)
count=0
# check if image is (png or jpg or jpeg) and not webp

for file in src/assets/images/*; do 
	if [[ ($file == *.png || $file == *.jpg || $file == *.jpeg)]] && ! test -f "${file%.*}.webp"
	then 
		((count++))
		cwebp -q 50 "$file" -o "${file%.*}.webp" >/dev/null 2>&1
	fi 
done;

# copy the images to the build folder
cp src/assets/images/*.{webp,svg} build/assets/images/

echo "Total images: $num_files"
echo "Images converted: $count"
echo "Conversion complete"

