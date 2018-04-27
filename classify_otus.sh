qiime feature-classifier classify-sklearn \
  --i-classifier ../classifiers/gg-99.qza \
  --i-reads rep-seqs-dada2-single.qza \
  --o-classification taxonomy.qza

qiime metadata tabulate \
  --m-input-file taxonomy.qza \
  --o-visualization taxonomy.qzv

#qiime taxa collapse \
#  --i-table table-dada2-single.qza \
#  --i-taxonomy taxonomy.qza \
#  --p-level 2 \
#  --o-collapsed-table collapsed-table-dada2-single.qza
#
#qiime feature-table relative-frequency \
#  --i-table collapsed-table-dada2-single.qza \
#  --o-relative-frequency-table rf-table-dada2-single.qza

#  qiime feature-table summarize \
#  --i-table rf-table-dada2-single.qza \
#  --o-visualization rf-table-dada2-single.qzv

qiime taxa barplot \
  --i-table table-dada2-single.qza \
  --i-taxonomy taxonomy.qza \
  --m-metadata-file sample-metadata.tsv \
  --o-visualization taxa-bar-plots.qzv
