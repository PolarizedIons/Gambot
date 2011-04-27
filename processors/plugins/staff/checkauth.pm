if (($event =~ /message/) && ($message =~ /^$sl !checkme$/)) {
  $answer = CheckAuth($target,$hostname);
  ACT("MESSAGE",$target,"$sender: Authorization of $hostname in $target is $answer.");
}

if (($event =~ /message/) && ($message =~ /^$sl !check (.+) ([$valid_chan_characters]+)$/)) {
  $answer = CheckAuth($1,$2);
  ACT("MESSAGE",$target,"$sender: Authorization of $1 in $2 is $answer.");
}
