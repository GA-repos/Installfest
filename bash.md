# Installfest

## bash Configuration (macOS only)

macOS ships with utilities that are slightly different from standard Linux tools.
To smooth out *some* of the differences, we need to change how macOS loads our
shell (`bash`) configuration.

 In your
    terminal, type:

```bash
  scripts/bash.sh
```

Now, we will verify the changes made by the previous script:

    In your command line you should see output like this:

    /usr/local/bin
    /usr/bin
    /bin
    /usr/sbin
    /sbin
