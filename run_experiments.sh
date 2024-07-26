#! /bin/bash

source config.sh

CLAM_CMD=/clam

ALL_MEM="-y ./clam-yaml-config/clam-null.yaml"
RBMM_COMPLIANT="-y ./clam-yaml-config/clam-null.yaml -y ./clam-yaml-config/clam-null-only-typed.yaml"

declare -a bitcode=("curl.bc" "thttpd.bc")
for bc in "${bitcode[@]}"
do
    bc="${INSTALL_BITCODE}/$bc"
    echo "All Memory"
    time ${CLAM_CMD} ${ALL_MEM} ${bc} --ocrab=${bc}.all.crabir
    echo "RBMM-compliant"
    time ${CLAM_CMD} ${RBMM_COMPLIANT} ${bc} --ocrab=${bc}.only_typed.crabir
done


printf "\n\nGenerating results ... \n\n"
for bc in "${bitcode[@]}"
do
    echo "----------------------------------------"
    echo "$bc"
    echo "----------------------------------------"
    bc="${INSTALL_BITCODE}/$bc"
    echo "All Memory"
    ./read_results.py ${bc}.all.crabir
    echo "RBMM-Compliant"
    ./read_results.py ${bc}.only_typed.crabir
done

exit 0


