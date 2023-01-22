set f_in=%1
set f_suffix=%~n2
set f_out="%~dp1%~n1.%f_suffix%"
echo  %f_in% %f_out%
ffmpeg -y -i %f_in% -c copy %f_out% || ffmpeg -y -i %f_in% -vcodec copy %f_out% || ffmpeg -y -i %f_in% -acodec copy %f_out% || ffmpeg -y -i %f_in% %f_out%