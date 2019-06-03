command SessionSave call SessionSave()
command SessionOpen call SessionOpen()

function SessionSave()
    exec 'mks! ~/.vim/sessions/' . s:getPwd() . '-' . s:getBranchName()
endfunction

function SessionOpen()
    exec 'so ~/.vim/sessions/' . s:getPwd() . '-' . s:getBranchName()
endfunction

function s:getPwd()
    return system('pwd | sed "s/[^a-zA-Z0-9]\+/\_/g"')[:-2]
endfunction

function s:getBranchName()
    return system("git name-rev --name-only HEAD")[:-2]
endfunction

