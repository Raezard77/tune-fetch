## Data handler core logic

```
# ./lib/data.sh
if `./data/tunefetch.txt` exists
    load data into vars
    export
else
    prompt user for data and store into vars
    export
```

<br>

```
# tunefetch
source ./lib/data.sh
echo $fieldname : $fieldvalue
```

___
<br><br>


