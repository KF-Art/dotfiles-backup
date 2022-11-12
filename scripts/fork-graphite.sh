kvdir=~/.config/Kvantum/
ccode=#4DB6AC

### LIGHT ###
for i in blue green orange pink purple red yellow
    do mkdir -p  ${kvdir}/Graphite-$i-light
    cp -r ${kvdir}/base/Graphite-teal.kvconfig  ${kvdir}/Graphite-$i-light/Graphite-$i-light.kvconfig
    cp -r ${kvdir}/base/Graphite-teal.svg  ${kvdir}/Graphite-$i-light/Graphite-$i-light.svg
       case $i in
            blue)   
                ccode=#5294E2 ;;
            green)
                ccode=#66BB6A ;;
            orange)
                ccode=#FB8C00 ;;
            pink)
                ccode=#F06292 ;;
            purple)
                ccode=#BA68C8 ;;
            red)
                ccode=#F44336 ;;
            yellow)
                ccode=#FFD600 ;;
        esac

    sed -i 's/#4DB6AC/'"${ccode}"'/g' ${kvdir}/Graphite-$i-light/Graphite-$i-light.{kvconfig,svg}
#    sed -i 's/#333333/'"${ccode}"'/g' ${kvdir}/Graphite-$i/Graphite-$i.{kvconfig,svg}
#    sed -i 's/highlight.text.color=#333333/highlight.text.color='"${ccode}"'/g' ${kvdir}/Graphite-$i/Graphite-$i.kvconfig
#    sed -i 's/text.toggle.color='"${ccode}"'/text.toggle.color=#333333/g' ${kvdir}/Graphite-$i/Graphite-$i.kvconfig

done

### DARK ###
for i in blue green orange pink purple red yellow
    do mkdir -p ${kvdir}/Graphite-$i-dark
    cp -r ${kvdir}/base-dark/GraphiteDark.kvconfig  ${kvdir}/Graphite-$i-dark/Graphite-$i-dark.kvconfig
    cp -r ${kvdir}/base-dark/GraphiteDark.svg  ${kvdir}/Graphite-$i-dark/Graphite-$i-dark.svg

       case $i in
            blue)   
                ccode=#5294E2 ;;
            green)
                ccode=#66BB6A ;;
            orange)
                ccode=#FB8C00 ;;
            pink)
                ccode=#F06292 ;;
            purple)
                ccode=#BA68C8 ;;
            red)
                ccode=#F44336 ;;
            yellow)
                ccode=#FFD600 ;;
        esac
    sed -i 's/#e0e0e0/'"${ccode}"'/g' ${kvdir}/Graphite-$i-dark/Graphite-$i-dark.{kvconfig,svg}
done

### BLACK ###
for i in blue green orange pink purple red yellow
    do mkdir -p ${kvdir}/Graphite-$i-black
    cp -r ${kvdir}/base-dark/GraphiteDark.kvconfig  ${kvdir}/Graphite-$i-black/Graphite-$i-black.kvconfig
    cp -r ${kvdir}/base-dark/GraphiteDark.svg  ${kvdir}/Graphite-$i-black/Graphite-$i-black.svg

       case $i in
            blue)   
                ccode=#5294E2 ;;
            green)
                ccode=#66BB6A ;;
            orange)
                ccode=#FB8C00 ;;
            pink)
                ccode=#F06292 ;;
            purple)
                ccode=#BA68C8 ;;
            red)
                ccode=#F44336 ;;
            yellow)
                ccode=#FFD600 ;;
        esac
    sed -i 's/#e0e0e0/'"${ccode}"'/g' ${kvdir}/Graphite-$i-black/Graphite-$i-black.{kvconfig,svg}
    sed -i 's/#2c2c2c/#0f0f0f/g' ${kvdir}/Graphite-$i-black/Graphite-$i-black.{kvconfig,svg}
    sed -i 's/#3c3c3c/#0f0f0f/g' ${kvdir}/Graphite-$i-black/Graphite-$i-black.{kvconfig,svg}
done      

### LIGHT NORD ###
for i in blue green orange pink purple red yellow
    do mkdir -p  ${kvdir}/Graphite-$i-Nord-light
    cp -r ${kvdir}/base/Graphite-teal.kvconfig  ${kvdir}/Graphite-$i-Nord-light/Graphite-$i-Nord-light.kvconfig
    cp -r ${kvdir}/base/Graphite-teal.svg  ${kvdir}/Graphite-$i-Nord-light/Graphite-$i-Nord-light.svg

       case $i in
            blue)   
                ccode=#5e81ac ;;
            green)
                ccode=#82ac5d ;;
            orange)
                ccode=#d0846c ;;
            pink)
                ccode=#cd7092 ;;
            purple)
                ccode=#b57daa ;;
            red)
                ccode=#c35b65 ;;
            yellow)
                ccode=#e4b558 ;;
        esac

    sed -i 's/#e0e0e0/'"${ccode}"'/g' ${kvdir}/Graphite-$i-Nord-light/Graphite-$i-Nord-light.{kvconfig,svg}
#    sed -i 's/highlight.text.color=#333333/highlight.text.color='"${ccode}"'/g' ${kvdir}/Graphite-$i/Graphite-$i.kvconfig
#    sed -i 's/text.toggle.color='"${ccode}"'/text.toggle.color=#333333/g' ${kvdir}/Graphite-$i/Graphite-$i.kvconfig

done

### NORD DARK ###
for i in blue green orange pink purple red yellow
    do mkdir -p ${kvdir}/Graphite-$i-Nord-dark
    cp -r ${kvdir}/base-dark/GraphiteDark.kvconfig  ${kvdir}/Graphite-$i-Nord-dark/Graphite-$i-Nord-dark.kvconfig
    cp -r ${kvdir}/base-dark/GraphiteDark.svg  ${kvdir}/Graphite-$i-Nord-dark/Graphite-$i-Nord-dark.svg

       case $i in
            blue)   
                ccode=#5e81ac ;;
            green)
                ccode=#82ac5d ;;
            orange)
                ccode=#d0846c ;;
            pink)
                ccode=#cd7092 ;;
            purple)
                ccode=#b57daa ;;
            red)
                ccode=#c35b65 ;;
            yellow)
                ccode=#e4b558 ;;
        esac
    sed -i 's/#2c2c2c/#252a33/g' ${kvdir}/Graphite-$i-Nord-dark/Graphite-$i-Nord-dark.{kvconfig,svg}
    sed -i 's/#3c3c3c/#252a33/g' ${kvdir}/Graphite-$i-Nord-dark/Graphite-$i-Nord-dark.{kvconfig,svg}
    sed -i 's/#e0e0e0/'"${ccode}"'/g' ${kvdir}/Graphite-$i-Nord-dark/Graphite-$i-Nord-dark.{kvconfig,svg}
done
