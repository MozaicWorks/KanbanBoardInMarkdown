build: 
	mkdir -p out
	pandoc -s board.md -c style/board.css --template template/template.html -o out/board.html
	cp -r style out/

open:
	xdg-open out/board.html
