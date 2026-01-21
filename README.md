# 卒論修論 LaTeX クラス

`ist` と名が付いていますが、卒論修論・和英共通で、文書冒頭の `\pagestyle` 命令で出し分けます。内部で日本語クラスを使っているので段落頭のインデントが全角 1 文字幅になっていたりと、色々と英語組版には向かない仕様ですが、多分そういうもんです（気になるなら直接 `\LoadClass` を `jarticle` から `article` に書き換えて非互換箇所を修正しましょう）。ここに置いてあるものは全て令和版です。

- [`.gitignore`](.gitignore): Git 管理する際の `.gitignore` の一例
- [`ist-thesis.cls`](ist-thesis.cls): pLaTeX 用のクラスファイル
  - upLaTeX で使う場合は 7 行目の `\LoadClass` を `jarticle` から `ujarticle` に変える
- [`ist-thesis-lt.cls`](ist-thesis-lt.cls): LuaLaTeX 用のクラスファイル
  - Unicode 文字が使いたい場合、フォント指定したい場合、[pLaTeX が壊れた場合](https://zrbabbler.hatenablog.com/entry/2022/08/08/080002)などにどうぞ
  - （この移植版は `ist-thesis.cls` に忠実で diff も微小ですが、作った当の本人は [`jsarticle` に変更したりと激しく改造した版](https://github.com/higolab/wa-otoda_202502_mthesis/blob/main/paper/ist-thesis.cls)を使っています）
- [`latexmkrc`](latexmkrc): pLaTeX 用の `latexmk` 設定
  - LuaLaTeX を使う場合は以下の内容にする（DVI は生成せず直接 PDF が生成される）
    ```perl
    $lualatex = 'lualatex -synctex=1 -interaction=nonstopmode -halt-on-error -file-line-error';
    $bibtex = 'bibtexu';
    $pdf_mode = 4;
    ```
- [`main.tex`](main.tex): 論文本体のテンプレート
  - LuaLaTeX を使う場合は先頭の `\documentclass` を `ist-thesis` から `ist-thesis-lt` に変える
- [`reference.bib`](reference.bib): 参考文献 BiBTeX のテンプレート
