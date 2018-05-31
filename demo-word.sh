make
if [ ! -e text8 ]; then
  wget http://mattmahoney.net/dc/text8.zip -O text8.gz
  gzip -d text8.gz -f
fi
time ./word2vec -train text8 -output vectors_trained.bin -initial vectors_untrained.bin -save-vocab vocab.txt -cbow 0 -size 300 -window 10 -negative 0 -hs 1 -sample 1e-6 -threads 20 -binary 1 -iter 15
