# ffmpeg -i https://edge-video.randyblue.com/video/bridge-layne-is-a-19-year-old-sexy-beast/MP4/bridge-layne-is-a-19-year-old-sexy-beast_nopay_2024k.mp4.m3u8 -c copy -bsf:a aac_adtstoasc output.mp4

function m3u8x
	echo $argv
	ffmpeg -i $argv[1] -c copy -bsf:a aac_adtstoasc $argv[2]

end