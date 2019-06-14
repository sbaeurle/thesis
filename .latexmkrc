@default_files = ('document.tex');

$pdf_mode = 1;
$dvi_mode = 0;
$ps_mode = 0;

$recorder = 1;

$bibtex_use = 2;

$cleanup_mode = 2;

push @generated_exts, qw(bak run.xml);

add_cus_dep( 'acn', 'acr', 0, 'makeglossaries' );
add_cus_dep( 'glo', 'gls', 0, 'makeglossaries' );
$clean_ext .= " acr acn alg glo gls glg";

sub makeglossaries {
      my ($name, $path) = fileparse( $$Psource );
      return system "makeglossaries -d '$path' '$name'";
}