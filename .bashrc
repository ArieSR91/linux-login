clear
lred='\033[1;91m'
lgreen='\033[1;92m'
lyellow='\033[1;93m'
lblue='\033[1;96m'
nc='\033[1;97m'
now1="$(date +'%a %d %b %Y')"
now="$(date +'%I:%M:%S %p')"

echo -e "$lgreen╭─────────────────────────╮    ╭───────╮    ╭─────────────────────────╮"
echo -e "│ ┬   $lred ACCESS DENIED  $lgreen ╭──┴────┤$lyellow LOGIN$lgreen ├────┴──╮  $nc ENTER PASSWORD  $lgreen ┬ │"
echo -e "│ ╰────────────────────╯    ╭──┴───┬───┴──╮    ╰────────────────────╯ │"
echo -e "╰───────────────────────────╯   ┬  │  ┬   ╰───────────────────────────╯"
echo -e "                                ╰──┴──╯$lblue"
read -p '                       [@] Username: ' userinput1;
#
read -p '                       [*] Password: ' userinput2;
#
if [ "${userinput2:-}" = "user91" ]
then
clear
echo -e "$lgreen╭─────────────────────────╮   ╭─────────╮   ╭─────────────────────────╮"
echo -e "│ ┬  $lblue ACCESS GRANTED  $lgreen ╭──┴───┤$nc SUCCESS$lgreen ├───┴──╮     $lblue INDONESIA    $lgreen ┬ │"
echo -e "│ ╰────────────────────╯   ╭──┴─────────┴──╮   ╰────────────────────╯ │"
echo -e "╰─────────────┬────────────╯  ╔═       ═╗  ╰─────────────┬────────────╯"
echo -e "              ╰─────┬─────────╢$lyellow WELCOME$lgreen ╟─────────┬──────╯"
echo -e "╭───────────────────┴────╮    ╚═       ═╝   ╭─────┴───────────────────╮"
echo -e "│     ┬   $nc @$userinput1   $lgreen  ┴  ╭─────────────╮ ┴   $nc $now   $lgreen ┬     │"
echo -e "│     ╰─────────────────────┤$lblue Hello World$lgreen ├─────────────────────╯     │"
echo -e "╰─────────────╮         ╭───┴─────────────┴───╮          ╭────────────╯"
echo -e "╭─────────────┴─────────╯  $lyellow $now1  $lgreen ╰──────────┴────────────╮"
echo -e "│---------------------------------------------------------------------│"
echo -e "╰─────────────────────────────────────────────────────────────────────╯$lblue"
fi
if [ "${userinput2:-}" != "user91" ]
then
  echo ""
  echo -e "                        $lred Invalid Password"
  sleep 1.0
  $exit && exit
fi
python3 login.py
date
echo ""

PS1='\[\033[1;92m\]┌──(\[\033[1;34m\]$userinput1\[\033[1;97m\]＠\[\033[1;34m\]\h\[\033[1;92m\])-[\[\033[0;97m\]\w\[\033[1;92m\]]
\[\033[1;92m\]└─\[\033[1;34m\]$ \[\033[0;97m\]'
