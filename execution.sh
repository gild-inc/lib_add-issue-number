#!bin/bash

GIT_HOOK_DIR=.git/hooks
mkdir -p $GIT_HOOK_DIR
# 念の為バックアップして、動作の一貫性担保の為削除。
if [ -e $GIT_HOOK_DIR/prepare-commit-msg ]; then
  cp -f $GIT_HOOK_DIR/prepare-commit-msg $GIT_HOOK_DIR/prepare-commit-msg.buckup
  rm -rf $GIT_HOOK_DIR/prepare-commit-msg
fi
# 「main.shを呼び出す処理」を対象のトリガースクリプトとして複製。
cp -f vendor/gild/add-issue-number/src/repository/git/hooks/prepare-commit-msg $GIT_HOOK_DIR

USER_CONFIG_DIR=.git_hooks/prepare-commit-msg
mkdir -p $USER_CONFIG_DIR
# 自由改修できるように課題番号付与スクリプトをポジトリに含めてもらうようにする為に複製。
cp -f vendor/gild/add-issue-number/src/repository/git_hooks/prepare-commit-msg/main.sh $USER_CONFIG_DIR
