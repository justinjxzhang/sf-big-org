for i in $(seq 2 300); do # max count for a dev org is 400, do 300 for a bit of breathing room
    cp -r DuplicatedObject1__c DuplicatedObject${i}__c;
    mv DuplicatedObject${i}__c/DuplicatedObject1__c.object-meta.xml DuplicatedObject${i}__c/DuplicatedObject${i}__c.object-meta.xml;
    sed -i '' -e "s/DuplicatedObject1/DuplicatedObject${i}/g" DuplicatedObject${i}__c/DuplicatedObject${i}__c.object-meta.xml;
done

# If you need to bulk delete, use this pattern and adjust the regex
# Leave the base object to copy, delete 2-9
# find . -regex '^.*DuplicatedObject[2-9]__c$' -type d -exec rm -rf {} + 