# Installfest

## Git

Run the command below in your terminal.
**This script should be run from the root of this installfest repository.**

```bash
  scripts/git.sh
```

The script will prompt you for some information

1.  Provide your GitHub username
2.  Provide your GitHub email (email you signed up for your account with)
3.  Next, you will be prompted for a location to save your ssh key

  ```
    Enter file in which to save the key (/Users/<your_username>/.ssh/id_rsa):
  ```
  - press `Enter` to use default location, `/Users/<your_username>/.ssh/id_rsa`

4.  Enter a passphrase

  ```
  Enter passphrase (empty for no passphrase):
  ```
  - press `Enter` without typing anything to use no passphrase (recommended)
  - press `Enter` again, without typing anything, when prompted to `Enter same passphrase again`

  (Feel free to select a non-default location or put in a password for your keys when prompted,
but it's not necessary to do so)

5.  When prompted, log into GitHub.com, go to [https://github.com/settings/ssh](https://github.com/settings/ssh)

6. Click the `New SSH key` button at the top right of the page

7. Enter a title for your SSH key (you can call it whatever you want)

8. paste in your SSH key. It should be copied to your clipboard already!

  *Help! My SSH key is no longer copied to my clipboard* (select your OS then run the below command in terminal)
  <details>
  <summary>macOS</summary>
  `pbcopy < ~/.ssh/id_rsa.pub`
  </details>

  <details>
  <summary>Linux</summary>

  `xclip -selection clipboard < ~/.ssh/id_rsa.pub`
  </details>

9. Click the `Add SSH key` button

10. In your terminal, press `[Enter]` to continue

    If you get a prompt along the lines of

    ```bash
    The authenticity of host 'github.com (xxx.xxx.xxx.xxx)'... can\'t be established.
    RSA key fingerprint is XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX.
    Are you sure you want to continue connecting (yes/no)?
    ```

    Just type 'yes'. If everything's working, you should get a response like the
    following:

    ```bash
    Hi <your_username>! You\'ve successfully authenticated, but GitHub does not provide shell access.
    ```

11.   Next, log into git.generalassemb.ly, go to [https://git.generalassemb.ly/settings/keys](https://git.generalassemb.ly/settings/keys),
    and paste in the same SSH key.

    *Help! My SSH key is no longer copied to my clipboard* (select your OS then run the below command in terminal)

    <details>
    <summary>macOS</summary>
    `pbcopy < ~/.ssh/id_rsa.pub`
    </details>

    <details>
    <summary>Linux</summary>

    `xclip -selection clipboard < ~/.ssh/id_rsa.pub`
    </details>

12.  In your terminal, paste in
```
  ssh -T git@git.generalassemb.ly
```
and press `[Enter]`.

  If you get a prompt along the lines of

  ```bash
  The authenticity of host 'git.generalassemb.ly (xxx.xxx.xxx.xxx)'... can\'t be established.
  RSA key fingerprint is XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX.
  Are you sure you want to continue connecting (yes/no)?
  ```

  Just type 'yes'. If everything's working, you should get a response like the
  following:

  ```bash
  Hi <your_username>! You\'ve successfully authenticated, but GitHub does not provide shell access.
  ```
