#!/bin/bash

# パッケージの更新
sudo apt-get update
sudo apt-get upgrade -y

# ロケールの変更
sudo apt install -y language-pack-ja
sudo update-locale LANG=ja_JP.UTF-8

# タイムゾーンの変更
sudo timedatectl set-timezone Asia/Tokyo

# Dockerセットアップ
sudo apt-get install -y curl
curl https://get.docker.com | sudo sh

# Docker サービスの起動と自動起動設定
sudo systemctl start docker
sudo systemctl enable docker

# vagrant ユーザーを docker グループに追加
sudo usermod -aG docker vagrant