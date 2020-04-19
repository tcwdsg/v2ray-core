
basedir=/data/gs/v2ray-core
cd $basedir/main
env CGO_ENABLED=0 go build -o $basedir/bin/v2ray -ldflags "-s -w"

cd $basedir/infra/control/main
env CGO_ENABLED=0 go build -o $basedir/bin/v2ctl -tags confonly -ldflags "-s -w"

cd $basedir
sh $basedir/bin/v2ray -config $basedir/bin/v2ray_test.json
