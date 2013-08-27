for i in *.mkv;
  do filename=$(basename "$i");
  name="${filename%.*}"
  ffmpeg -i "$i" -ab 128k -ac 2 -vcodec libx264 -vpre slow -crf 22 -threads 0 "$name.mp4";
done
