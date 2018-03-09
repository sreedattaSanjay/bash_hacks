COUNT=1
for file in *; do
    mv "$file" "${COUNT}_$file"
    let COUNT++
done