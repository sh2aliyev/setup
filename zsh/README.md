# Zsh

> Manual setup.

<br>

## Install

```sh
sudo apt install zsh
```

- Make it your default shell:

  ```sh
  chsh -s $(which zsh)
  ```

<br>

## Add Plugins

- [`powerlevel10k`](https://github.com/romkatv/powerlevel10k): A Zsh theme.

  > Fonts: https://github.com/romkatv/powerlevel10k#fonts.

  > ```sh
  > git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zplugins/powerlevel10k
  > ```
  >
  > ```sh
  > # ~/.zshrc
  > source ~/.zplugins/powerlevel10k/powerlevel10k.zsh-theme
  > ```

- [`zsh-syntax-highlighting`](https://github.com/zsh-users/zsh-syntax-highlighting): Fish shell like syntax highlighting for Zsh.

  > ```sh
  > git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zplugins/zsh-syntax-highlighting
  > ```
  >
  > ```sh
  > # ~/.zshrc
  > source ~/.zplugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  > ```

- [`zsh-autosuggestions`](https://github.com/zsh-users/zsh-autosuggestions): Fish-like autosuggestions for zsh.
  > ```sh
  > git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions.git ~/.zplugins/zsh-autosuggestions
  > ```
  >
  > ```sh
  > # ~/.zshrc
  > source ~/.zplugins/zsh-autosuggestions/zsh-autosuggestions.zsh
  > ```
