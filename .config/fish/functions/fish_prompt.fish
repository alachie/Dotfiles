# my custom prompt

function fish_prompt
	set_color normal
	echo -n '» '
	set_color white
	echo -n $USER
	set_color normal
	echo -n ' » ['
	set_color white
	echo -n (prompt_pwd)
	set_color normal
	echo -n ']: '
end