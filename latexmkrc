$latex = 'platex -kanji=utf8 -no-guess-input-enc -synctex=1 -interaction=nonstopmode -file-line-error';
$bibtex = 'pbibtex';
$dvipdf = 'dvipdfmx %O -o %D %S';
$makeindex = 'mendex %O -o %D %S';
$pdf_mode = 3; 

# 出力ディレクトリの指定を明示
$out_dir = 'out';

# BibTeXがoutディレクトリ内のauxを正しく処理するための設定
$bibtex_use_out_dir = 1;