context-FuelPHP1
===============

* FuelPHP 1.x for ニフティクラウドC4SA(NIFTYCloud C4SA)
 * FuelPHP 1.x をニフティクラウドC4SA上で展開するためのコンテクスト作成スクリプト
* FuelPHP公式
 * http://fuelphp.com
 * https://github.com/fuel/fuel/

## 作り方1

```
$ git clone --recursive https://github.com/NIFTYCloud-C4SA/context-FuelPHP.git
$ cd context-FuelPHP
$ ./makecontext.sh
```

## 作り方2

```
$ git clone https://github.com/NIFTYCloud-C4SA/context-FuelPHP.git
$ cd context-FuelPHP
$ git submodule update --init
$ cd contexts/krm/docroot
$ git submodule update --init
$ cd ../ 
$ cp -pr patch/db.php docroot/fuel/app/config/production/db.php
$ rm -rf patch/
$ cd docroot
$ tar czpf ../docroot.tar.gz *
$ cd ../
$ rm -rf docroot
$ cd ../
$ tar czpf krm.tar.gz krm
```

