# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Ubuntu 24.04（ARM）
  config.vm.box = "bento/ubuntu-24.04"
  config.vm.hostname = "ubuntu-arm64"
  config.vm.network "private_network", ip: "192.168.2.99"

  # 仮想マシンのリソース設定
  config.vm.provider "virtualbox" do |vb|
    vb.name = "ubuntu-vm"
    vb.memory = "2048"
    vb.cpus = 2
  end

  # ホストとゲスト間のフォルダ同期設定
  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"
  
  # プロビジョニングスクリプトの指定（任意）
  config.vm.provision "shell", path: "provision.sh"
end