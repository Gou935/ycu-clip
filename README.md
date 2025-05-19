# Markdown ファイルの作成方法

## Command を使う場合

`hugo new posts/ファイル名/index.md`
を入力して、Enter キーを押してください。

例.
`hugo new posts/first-post/index.md`

これで posts の中に first-post というフォルダと index.md という Markdown ファイルが作成されたはずです。
Command を使う場合、Front Matter は自動的に配置されるので、そのまま情報を入れ替えてください。

## 自分で作成する場合

自分でファイルを作成するときは、以下の Front Matter をコピーしてください。

```
---
title: ""
date: ""
lastmod:
categories:
tags: [""]
draft: false
---

<figure>
  <img class="thumbnailshadow" src="img/"画像の名前".jpg" width="450" alt="" />
  <figcaption style="font-size: 1.2rem;">"画像の説明"~</figcaption>
</figure>
```

## Memos

`git pull --rebase`
