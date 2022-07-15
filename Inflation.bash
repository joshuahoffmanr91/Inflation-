#!/bin/bash


Inflation () {

shopt -s extglob
Crop=(${2//?()/\ }) && C=${#2}

        Dust () {

        Wind=${#Crop[@]}
        unset D

                for E in 2 {2..9}; do
                F=$((F++%2+$[Wind%2]))
                unset C

                        for (( C=F; C <= Wind;  C+=E )); do
                        declare -g Crop[C]=${Crop[D++%Wind-C]}
                        done

                done

        }


Crop=(${Crop[@]//?()/\ })

        while [[ ${#Crop[@]} -le $1 ]]; do
        ((C=++C%${#1}))

                for Grow in ${Crop[@]##+(0)}; do
                Soil=$[${Crop[@]/#/+}0]
                Seed=$(( $[${#Crop[@]}*10/Grow]+A-- ))
                (( Soil < A )) && break
                Leaf=${Soil:$[E=${#Soil}/Grow]+$[++C%4]}${Soil::$[E+$[++C%4-C%2]]}
                Crop[Seed]=${Leaf##+(0)}
                done

        Crop=(${Crop[@]//?()/\ })
        (( ${D:=0} <= 0 )) || (( Seed%10 <  C%2 )) && Dust
        done

Food="${Crop[@]}" && Food=${Food//\ /}
cat <<<${Food}

}

Inflation 9999 12346789
