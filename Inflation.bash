#!/bin/bash

Inflation () {

shopt -s extglob
Crop=(${2//?()/\ })
eval declare -i C+=\({\${#{1,2}}\ ,\$[\${{1,2}//?\(\)/+}]\ }\)

        Dust () {

        eval eval C[\\\${C[{0..9}]::{${#C[Y++]}..0}}]+=\+$[++C%10]
        eval eval Till=\( \{\$[++C%2]..\${#Crop[@]}..{2,\${C[{0..4}]:=2}}\} \)
        eval eval Crop[\\\${Till[{0..${#Till[@]}}%${#Crop[@]}]}]+=\${Crop[X++%${#Crop[@]}]}
        Crop=(${Crop[@]//?()/\ })

        }

Dust

        while [[ ${#Crop[@]} -le $1 ]]; do
        declare -i C[++C%10]=${C[C%10]/%/+1}

                for Grow in ${Crop[@]##+(0)}; do
                Soil=$(( ${C[0]}${Crop[@]/#/+}${C[1]} ))
                Seed=$(( ${#Crop[@]}*10/Grow ))
                (( A=--A%${#Crop[@]} > Soil )) && break
                Bark=${Soil:$[E=${#Soil}/Grow]+$[++C%4]}
                Leaf=${Leaf##+(0)}${Soil::$[E+$[C%3]]}
                Crop[Seed+A--]=$((${Leaf/#/+}0${Bark##+(0)}))
                done

        (( ++C%25 )) && Dust && continue
        (( ++C%5 )) && Crop+=(${Crop[@]//-})
        Crop=(${Crop[@]//?()/\ })
        done

cat <<<${Crop[@]//-}

}

Inflation $@
