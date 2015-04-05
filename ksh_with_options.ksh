#!/usr/bin/ksh
# Used to
# file_name_here
# Final 00_00_0000
# (c) Copyright 2001-2003 by BINWARE / CRLC.NET

USAGE=" Usage: "
HELP=" No helpfile written yet"
dep=" Dependencies for file_name_here: "
FPATH=/$PWD/fnc

# Options

		while getopts :r:a:Dh arguments
			do
				case $arguments in

					a)
						exit;;
					r)
						exit;;

					D) 	clear
						print " $dep"
						exit;;
					h) 	clear
						print ""
						print ""
						print "$USAGE"
						print ""
						print " file_name_here [ options ]"
						print ""
						print "		Options"
						print "			[ -a ] Auto Load"
						print "			[ -r ] Usually used for reporting"
						print "			[ -D ] Dependencies"
						print "			[ -h ] Help"
						print ""
						print "$HELP"
						exit;;
					 \?) autoload fnc_help
					 	fnc_help -r file_name_here
					 	exit;;
				esac
			done
