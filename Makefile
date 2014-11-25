
build: rootfs.tar Dockerfile
	docker build -t basebox .

tag:
	docker tag basebox quay.io/baseboxorg/basebox

rootfs.tar:
	cd rootfs && docker build -t basebox-rootfs .
	docker run --rm basebox-rootfs cat /tmp/buildroot/output/images/rootfs.tar > rootfs.tar
	docker rmi basebox-rootfs