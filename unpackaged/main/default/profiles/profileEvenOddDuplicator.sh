# Generate ClassAccesses - change filter condition for odd and even
# copy(
#   Array.from({ length: 1000 }, (_, idx) => idx + 1)
#     .filter((x) => x % 2 == 0)
#     .map(
#       (idx) => `<classAccesses>
#         <apexClass>TestClass${idx}</apexClass>
#         <enabled>true</enabled>
#     </classAccesses>`
#     )
#     .join("\n")
# );

# Generate FieldPermissions - change filter condition for odd and even
# copy(
#   Array.from({ length: 300 }, (_, idx) => idx + 1)
#     .filter((x) => x % 2 == 0)
#     .map(
#       (idx) => `<fieldPermissions>
#         <editable>true</editable>
#         <field>DuplicatedObject${idx}__c.DuplicatedCheckbox__c</field>
#         <readable>true</readable>
#     </fieldPermissions>`
#     )
#     .join("\n")
# );


for i in $(seq 0 2 1000); do
    cp ClassSpecificUserEven.profile-meta.xml ClassSpecificUser$i.profile-meta.xml;
done

for i in $(seq 1 2 1000); do
    cp ClassSpecificUserOdd.profile-meta.xml ClassSpecificUser$i.profile-meta.xml;
done