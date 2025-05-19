---
title: '{{ replace .File.ContentBaseName "-" " " | title }}'
date: "{{ .Date }}"
lastmod:
categories:
tags: [""]
draft: false
---

<!-- 画像ファイル名と説明を入れてください -->
<figure>
  <img class="thumbnailshadow" src="img/.jpg" width="450" alt="" />
  <figcaption style="font-size: 1.2rem;"></figcaption>
</figure>

<!-- 音声ファイル名を入れてください -->
<audio controls>
  <source src="audio/.mp3" type="audio/mpeg" />
</audio>

<!-- Youtubeのリンクを入れてください、いらない場合は削除してください -->

{{< youtube id="" title="" >}}
