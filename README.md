# NF

<p align="center">A command-line system information tool written in bash 3.2+</p>

<p align="center">
    <a href="https://gitlab.com/xgqt/nf/pipelines">
        <img src="https://gitlab.com/xgqt/nf/badges/master/pipeline.svg">
    </a>
    <a href="https://gitlab.com/xgqt/nf/commits/master.atom">
        <img src="https://img.shields.io/badge/feed-atom-orange.svg">
    </a>
    <a href="./LICENSE.md">
        <img src="https://img.shields.io/badge/license-MIT-blue.svg">
    </a>
</p>

<b>nf</b> was forked from https://github.com/dylanaraps/neofetch


# About

<b>nf</b> is a command-line system information tool written in `bash 3.2+`. <b>nf</b> displays information about your operating system, software and hardware in an aesthetic and visually pleasing way.

The overall purpose of <b>nf</b> is to be used in screen-shots of your system. <b>nf</b> shows the information other people want to see. There are other tools available for proper system statistic/diagnostics.

The information by default is displayed alongside your operating system's logo. You can further configure <b>nf</b> to instead use an image, a custom ASCII file, your wallpaper or nothing at all.

You can further configure <b>nf</b> to display exactly what you want it to. Through the use of command-line flags and the configuration file you can change existing information outputs or add your own custom ones.

<b>nf</b> supports almost 150 different operating systems. From Linux to Windows, all the way to more obscure operating systems like Minix, AIX and Haiku. If your favourite operating system is unsupported: Open up an issue and support will be added.


# Installation

# Git

As user:

```sh
git clone --recursive --verbose https://gitlab.com/xgqt/nf
cd nf
make install
```


# Gentoo

As root:

```sh
emerge -1nv app-eselect/eselect-repository
eselect repository enable myov
emaint sync -r myov
emerge -av --autounmask app-misc/nf
```
