export IMAGE_TAG=$(cat VERSION)

docker manifest create --amend cachengo/vhss-synchronizer:$IMAGE_TAG cachengo/vhss-synchronizer-x86_64:$IMAGE_TAG cachengo/vhss-synchronizer-aarch64:$IMAGE_TAG
docker manifest push cachengo/vhss-synchronizer:$IMAGE_TAG
