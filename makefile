outFolder=out
templateFile=template/template.html
markdownFile=board.md
cssFile=style/board.css 
outFile=board.html
markdownFileFromUrl=https://raw.githubusercontent.com/MozaicWorks/KanbanBoardInMarkdown/master/board.md 
pandocArgs=-c $(cssFile) --template $(templateFile) -o $(outFolder)/$(outFile)
pandocCommand=pandoc -s
copyStyleCommand=cp $(cssFile) $(outFolder)/style/
openCommand=xdg-open

build: .makeDirs
	$(pandocCommand) $(markdownFile) $(pandocArgs)
	$(copyStyleCommand)

fromUrl: .makeDirs
	$(pandocCommand) $(markdownFileFromUrl) $(pandocArgs)
	$(copyStyleCommand)

open:
	$(openCommand) $(outFolder)/$(outFile)

clean:
	rm -rf $(outFolder)

.makeDirs:
	mkdir -p $(outFolder)/style 
