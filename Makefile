all: build

build:
	@echo "Building..."
	@cargo build --release
	@upx target/release/ncspot

deploy:
	@echo "moving binary in MyDWM folder..."
	@mv target/release/ncspot ../myDwm/programs/spot/
