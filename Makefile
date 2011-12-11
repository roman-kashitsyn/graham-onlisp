ORIGIN_HTML  := onlisp.html
TIDY         := tidy
XSLT_PROC    := xsltproc
HTML2DOCBOOK := html2docbook.xsl
RM           := rm

onlisp.docbook: onlisp.html $(HTML2DOCBOOK)
	$(XSLT_PROC) $(HTML2DOCBOOK) $< > $@

.PHONY: clean
clean:
	$(RM) -rf *.docbook