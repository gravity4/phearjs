# HOW TO BUILD AND PUSH
```
export phearjsbuild=$(date +%Y_%m_%d_%H) && echo "Build: ${phearjsbuild}"

gcloud docker --authorize-only

docker build -t us.gcr.io/trim-1349/phearjs:$phearjsbuild .

gcloud docker -- push us.gcr.io/trim-1349/phearjs:$phearjsbuild
```