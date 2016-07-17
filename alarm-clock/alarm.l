#!/usr/bin/pil

(de head1 (f)
    (in f (line T)))

(unless (fork) (call 'mplayer "/home/pi/intergalactic.mp3") (bye))

(loop
  (T (=0 (format (head1 "/sys/class/gpio/gpio4/value")))
         (call 'pkill "-9" "mplayer"))
  (wait 500)
  (prinl "waitingggg"))
(bye)
