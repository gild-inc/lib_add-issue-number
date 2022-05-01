## 概要
課題番号やチケット番号をコミット時のコメント先頭に自動的に追加する機能を提供するライブラリです。

## 導入要件

* なし

## 導入方法

`composer.json`に以下追加します。

```json
{
    "scripts": {
        "post-autoload-dump": [
            "bash vendor/gild/add-issue-number/execution.sh"
        ]
    }
}
```

```shell
composer require --dev gild/add-issue-number ^1.0
```

## 管理対象ファイルについて

`.git_hooks`配下に生成されているファイルについては、管理対象ファイルとしてください。

### main.sh
処理自体は利用者が設定管理することが可能です。 ファイル名の変更は不可です。

## 既にgit-hookを使われてる方について

本ライブラリ導入前にgit-hookを利用しているケースで既にprepare-commit-msgに何かしらのスクリプトを記述している場合を想定し、削除や上書きはしておりません。

prepare-commit-msgは`.buckup`という接尾辞を付与して退避しています。
