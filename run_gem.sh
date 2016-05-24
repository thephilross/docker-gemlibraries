#!/usr/bin/env bash

set -euo pipefail

if [[ $# < 1 ]]; then
echo ""
echo "gem-libraries COMMAND ARGS"
echo ""
echo "Use -h as the first argument to print command specific help messages"
echo ""
echo "Commands:"
echo "      compute-transcriptome"
echo "      gem-2-gem"
echo "      gem-2-wig"    
echo "      gem-indexer_bwt-dna"
echo "      gem-indexer_generate"  
echo "      gem-mappability"
echo "      gem-mapper"     
echo "      gem-rna-mapper"             
echo "      transcriptome-2-genome"
echo "      gem-2-sam"  
echo "      gem-indexer"
echo "      gem-indexer_fasta2meta+cont"
echo "      gem-info"              
echo "      gem-mappability-retriever"  
echo "      gem-retriever"
echo "      gtf-2-junctions"
echo "      splits-2-junctions"
echo ""
exit
fi

CMD=$1; shift

eval "$CMD $@"
