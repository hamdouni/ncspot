all: build

build:
	@echo "Building..."
	@cargo build --release

deploy:
	@echo "moving binary in MyDWM folder..."
	@mv target/release/ncspot ../myDwm/programs/spot/
