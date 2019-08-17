#/usr/bin/env bash

#THIS IS OUR AUTOCOMPLETE FOR MCC
_mcc_completions()
{
    # init bash-completion's stuff
    _init_completion || return

    # fill COMPREPLY using bash-completion's routine
    case $COMP_CWORD in
	1) #COMPLETE JUST FOR FILES ENDING IN .cpp, AND ONLY IF THERE ARE NO OTHER ARGUMENTS ALREADY
	    _filedir '@(cpp)'
    esac
    return 0
}

complete -F _mcc_completions mcc
