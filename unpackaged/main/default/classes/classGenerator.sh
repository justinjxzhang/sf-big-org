for i in $(seq 2 1000); do
    cp TestClass1.cls TestClass$i.cls;
    cp TestClass1.cls-meta.xml TestClass$i.cls-meta.xml;
    sed -i '' -e "s/TestClass1/TestClass$i/" TestClass$i.cls;
done