#loads exec_lines.txt to run when opening a notebook
c = get_config()

with open("/vagrant/exec_lines.txt", "r") as f:
    line_exec = []
    for line in f:
        clean_line = line.strip()
        if clean_line != '' and clean_line[0] != '#':
            line_exec.append(clean_line)

c.InteractiveShellApp.exec_lines = line_exec
