format:
	npx prettier --write **/*.md

watch:
	mdbook watch --open

build:
	mdbook build

clean:
	mdbook clean

all: format build