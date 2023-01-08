---@meta

---
---# Extra `os` library functions
---
---The `os` library has a few extra functions and variables: `os.selfdir`, `os.exec`, `os.spawn`, `os.setenv`,
---`os.env`, `os.gettimeofday`, `os.times`, `os.tmpdir`, `os.type`, `os.name` and `os.uname`,
---that we will discuss here.
---
---* `os.selfdir` is a variable that holds the directory path of the
---    actual executable. For example: `\directlua {tex.sprint(os.selfdir)`}.
---
---* `os.exec(commandline)` is a variation on `os.execute`. Here
---    `commandline` can be either a single string or a single table.
---
---    * If the argument is a table *LuaTeX* first checks if there is a value at
---        integer index zero. If there is, this is the command to be executed.
---        Otherwise, it will use the value at integer index one. If neither are
---        present, nothing at all happens.
---
---
---    * The set of consecutive values starting at integer 1 in the table are the
---        arguments that are passed on to the command (the value at index 1 becomes
---        `arg[0]`). The command is searched for in the execution path, so
---        there is normally no need to pass on a fully qualified path name.
---
---
---    * If the argument is a string, then it is automatically converted into a
---        table by splitting on whitespace. In this case, it is impossible for the
---        command and first argument to differ from each other.
---
---
---    * In the string argument format, whitespace can be protected by putting
---        (part of) an argument inside single or double quotes. One layer of quotes
---        is interpreted by *LuaTeX*, and all occurrences of `\"`, `\'`
---        or `\\` within the quoted text are unescaped. In the table format,
---        there is no string handling taking place.
---
---    This function normally does not return control back to the *Lua* script: the
---    command will replace the current process. However, it will return the two
---    values `nil` and `error` if there was a problem while
---    attempting to execute the command.
---
---    On \MSWINDOWS, the current process is actually kept in memory until after the
---    execution of the command has finished. This prevents crashes in situations
---    where *TeX*LUA\ scripts are run inside integrated *TeX* environments.
---
---    The original reason for this command is that it cleans out the current
---    process before starting the new one, making it especially useful for use in
---    *TeX*LUA.
---
---* `os.spawn(commandline)` is a returning version of `os.exec`,
---    with otherwise identical calling conventions.
---
---    If the command ran ok, then the return value is the exit status of the
---    command. Otherwise, it will return the two values `nil` and `error`.
---
---* `os.setenv(key,value)` sets a variable in the environment. Passing
---    `nil` instead of a value string will remove the variable.
---
---* `os.env` is a hash table containing a dump of the variables and
---    values in the process environment at the start of the run. It is writeable,
---    but the actual environment is `not` updated automatically.
---
---* `os.gettimeofday()` returns the current “\UNIX\ time”, but as a
---    float. This function is not available on the \SUNOS\ platforms, so do not use
---    this function for portable documents.
---
---* `os.times()`returns the current process times according to \ the
---    \UNIX\ C library function “times”. This function is not available on
---    the \MSWINDOWS\ and \SUNOS\ platforms, so do not use this function for
---    portable documents.
---
---* `os.tmpdir()` creates a directory in the “current directory”
---    with the name `luatex.XXXXXX` where the `X`-es are replaced by a
---    unique string. The function also returns this string, so you can `lfs.chdir()` into it, or `nil` if it failed to create the directory.
---    The user is responsible for cleaning up at the end of the run, it does not
---    happen automatically.
---
---* `os.type` is a string that gives a global indication of the class of
---    operating system. The possible values are currently `windows`, `unix`, and `msdos` (you are unlikely to find this value “in the
---    wild”).
---
---* `os.name` is a string that gives a more precise indication of the
---    operating system. These possible values are not yet fixed, and for `os.type` values `windows` and `msdos`, the `os.name`
---    values are simply `windows` and `msdos`
---
---    The list for the type `unix` is more precise: `linux`, `freebsd`, `kfreebsd`, `cygwin`, `openbsd`, `solaris`, `sunos` (pre-solaris), `hpux`, `irix`, `macosx`, `gnu` (hurd), `bsd` (unknown, but \BSD-like), `sysv` (unknown, but \SYSV-like), `generic` (unknown).
---
---* `os.uname` returns a table with specific operating system
---    information acquired at runtime. The keys in the returned table are all
---    string values, and their names are: `sysname`, `machine`, `release`, `version`, and `nodename`.
---
----------------------------------------------------------------
os = {}
