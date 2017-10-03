# Installfest

## Git

Run the command below in your terminal. When prompted, enter the same email you used to sign up for your Github account and your Github username.

```bash
  config/git.sh
```

(Feel free to put in a password or select a non-default location for your keys when prompted,
but it's not necessary to do so; to move ahead, just keep hitting `enter`).

-   When prompted, log into GitHub.com, go to [https://github.com/settings/ssh](https://github.com/settings/ssh),
    and paste in your SSH key. It should be copied to your clipboard already!

    If you get a prompt along the lines of

    ```bash
    The authenticity of host 'github.com (xxx.xxx.xxx.xxx)'... can\'t be established.
    RSA key fingerprint is XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX.
    Are you sure you want to continue connecting (yes/no)?
    ```

    Just type 'yes'. If everything's working, you should get a response like the
    following:

    ```bash
    Hi yourUsername! You\'ve successfully authenticated, but GitHub does not provide shell access.
    ```

-   Next, log into git.generalassemb.ly, go to [https://git.generalassemb.ly/settings/keys](https://git.generalassemb.ly/settings/keys),
    and paste in the same SSH key.
