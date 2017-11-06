COUNT=1
for file in *.pdf; do
    mv "$file" "${COUNT}_$file"
    let COUNT++
done