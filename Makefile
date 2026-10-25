.PHONY: upgrade clean

default: upgrade

upgrade:
	@echo "Upgrading packages..."
	@make clean
	@flutter pub upgrade
	@flutter pub upgrade --major-versions

clean:
	@echo "Cleaning the project..."
	@flutter clean
	@flutter pub get
