# Ubuntu 24.04 ARM + Docker 開発環境

このリポジトリは Mac（Apple Silicon）環境で **Vagrant** を使って **VirtualBox** 上に Ubuntu 24.04 (ARM64) を構築と、  
Docker のセットアップするための資産です。

## 前提

Ubuntu には、ssh や root 権限、ポート等に関する設定はデフォルトのため、  
利用者の環境や要件に応じて **Vagrantfile** と **provision.sh** の設定を任意で変更してから、ご使用ください。  
※ Ubuntu 上で とりあえず Docker が使いたいだけの人は、そのままでOKです。

### 実行環境

* Mac（M4 Apple Silicon）
* VirtualBox : 7.1.6
* Vagrant : 2.4.3

## 使い方

本リポジトリをローカルに `git clone` してから、以下の手順を実行してください。

1. **VM の構築・起動**  
   ```bash
   vagrant up
   ```
   ※実行完了まで数分かかります。

2. **VM へSSH接続**
   ```bash
   vagrant ssh
   ```

### その他

* VM の接続解除コマンド : `exit`
* VM の停止コマンド : `vagrant halt`
* VM の停止コマンド : `vagrant destroy`

Enjoy using Ubuntu and Docker!