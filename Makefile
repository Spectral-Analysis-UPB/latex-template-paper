.PHONY:
	clean

clean:
	@rm *.aux 2>>/dev/null || echo "does not exist"
	@rm */*.aux 2>>/dev/null || echo "does not exist"
	@rm *.gz 2>>/dev/null || echo "does not exist"
	@rm */*.log 2>>/dev/null || echo "does not exist"
	@rm *.log 2>>/dev/null || echo "does not exist"
	@rm *.bbl 2>>/dev/null || echo "does not exist"
	@rm *.blg 2>>/dev/null || echo "does not exist"
	@rm *.idx 2>>/dev/null || echo "does not exist"
	@rm *.ilg 2>>/dev/null || echo "does not exist"
	@rm *.ind 2>>/dev/null || echo "does not exist"
	@rm -rf _minted-main
	@rm -rf _minted-paper
	@rm *.toc 2>>/dev/null || echo "does not exist"
	@rm *.out 2>>/dev/null || echo "does not exist"
	@rm */*.out 2>>/dev/null || echo "does not exist"

diff: paper.tex
	@mkdir tmp_dir_0001 && git show HEAD~0:paper.tex > tmp_dir_0001/tmp_file_0001
	@latexdiff tmp_dir_0001/tmp_file_0001 paper.tex > diff.tex
	@rm -rf tmp_dir_0001
