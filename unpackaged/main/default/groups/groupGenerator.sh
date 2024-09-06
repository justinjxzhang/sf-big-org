for i in ${seq 2 1000}; do
    cp Group1.group-meta.xml Group$i.group-meta.xml;
    sed -i '' -e "s/Group1/Group$i/" Group$i.group-meta.xml;
done