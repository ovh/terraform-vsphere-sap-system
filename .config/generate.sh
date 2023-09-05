#!/bin/bash
terraform-docs . && \
sed -i 's/{<br>/\&emsp;{<br>\&emsp;\&emsp;/g' README.md && \
sed -i 's/},<br>/\&emsp;},<br>/g' README.md && \
sed -i -e 's/[^{]}<br>/\&emsp;}<br>/g' README.md && \
sed -i 's/,<br>/,<br>\&emsp;\&emsp;/g' README.md && \
sed -i 's/,<br>&emsp;&emsp;    &emsp;{/,<br>\&emsp;{/g' README.md && \
sed -i 's/" &emsp;},<br>&emsp;&emsp;/" },<br>\&emsp;/g' README.md && \
sed -i -e 's/{ "id" : 0/\&emsp;{ "id" : 0/g' README.md && \
sed -i '25,52 s/{ "id"/\&emsp;\&emsp;\&emsp;{ "id"/g' README.md && \
sed -i -e 's/}<br>[[:space:]]*\],/}<br>\&emsp;\&emsp;\&emsp;],/g' README.md && \
sed -i 's/"&emsp;}/" }/g' README.md
