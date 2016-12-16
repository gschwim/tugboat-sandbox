install:
	npm install
	npm run build

pre-install:
	curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
	sudo apt-get install -y nodejs

tugboat-init: pre-install install
	ln -sf /var/lib/tugboat /var/www/html

tugboat-update: install
tugboat-build: install
